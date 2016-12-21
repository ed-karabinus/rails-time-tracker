class Comment < ActiveRecord::Base
  belongs_to :session
  belongs_to :user

  validates :content, presence: true
end
