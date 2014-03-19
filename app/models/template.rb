# == Schema Information
#
# Table name: templates
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  content    :text             not null
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Template < ActiveRecord::Base
  belongs_to :user
  
  validates :title, :content, :user, presence: true
  
end
