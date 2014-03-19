Alistpress::Application.routes.draw do
  root to: 'home#index'  
  
  authenticated do
    root to: 'member_areas#index', as: :authenticated_root
  end
  
  devise_for :users, 
              path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'new' },  
              skip: :sessions
  
  devise_scope :user do
    match '/login', via: :get, to: 'devise/sessions#new', as: :new_user_session
    match '/login', via: :post,  to: 'devise/sessions#create', as: :user_session
    match '/logout', via: :delete, to: 'devise/sessions#destroy', as: :destroy_user_session  
  end
  
end
