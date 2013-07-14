class Task < ActiveRecord::Base
  attr_accessible :assigned_user_id, :complete_by, :is_complete, :task
  belongs_to :user

  validates :task, presence: true, length: { maximum: 200 }
  validates :user_id, presence: true
  default_scope order: 'tasks.is_complete DESC,tasks.created_at DESC'
end
