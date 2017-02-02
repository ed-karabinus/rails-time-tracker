class Comment < ActiveRecord::Base
  belongs_to :timeblock
  belongs_to :user

  validates :content, presence: true
end
