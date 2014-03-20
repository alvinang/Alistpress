class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  require 'uuidtools'

  def facebook
    oauthorize "Facebook"
  end

  private

  def oauthorize(kind)
    @user = find_for_ouath(kind, env["omniauth.auth"], current_user)
    if @user
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => kind
      session["devise.#{kind.downcase}_data"] = env["omniauth.auth"]
      sign_in_and_redirect @user, :event => :authentication
    end    
  end

  def find_for_ouath(provider, access_token, resource=nil)
    user, email, name, uid, auth_attr = nil, nil, nil, {}
    case provider
    when "Facebook"
      uid = access_token['uid']
      email = access_token[:info][:email]
      auth_attr = { :uid => uid, 
                    :token => access_token['credentials']['token'], 
                    :secret => nil, 
                    :name => access_token[:info][:name], 
                    :link => access_token[:info][:urls]["Facebook"] 
                  }
    else
      raise 'Provider #{provider} not handled'
    end
    if resource.nil?
      if email
        user = find_for_oauth_by_email(email, resource)
      elsif uid && name
        user = find_for_oauth_by_uid(uid, resource)
        if user.nil?
          user = find_for_oauth_by_name(name, resource)
        end
      end
    else
      user = resource
    end

    auth = user.authorizations.find_by_provider(provider)
    if auth.nil?
      auth = user.authorizations.build(:provider => provider)
      user.authorizations << auth
    end
    auth.update_attributes auth_attr

    return user
  end

  def find_for_oauth_by_uid(uid, resource=nil)
    user = nil
    if auth = Authorization.find_by_uid(uid.to_s)
      user = auth.user
    end
    return user
  end

  def find_for_oauth_by_email(email, resource=nil)
    if user = User.find_by_email(email)
      user
    else
      user = User.new(:email => email, :password => Devise.friendly_token[0,20]) 
      user.save
    end
    return user
  end

  def find_for_oauth_by_name(name, resource=nil)
    if user = User.find_by_name(name)
      user
    else
      user = User.new(:name => name, :password => Devise.friendly_token[0,20], :email => "#{UUIDTools::UUID.random_create}@host")
      user.save :validate => false
    end
    return user
  end
end