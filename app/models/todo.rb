class Todo < ActiveRecord::Base
  validates :task, presence: true
  belongs_to :user 
end
