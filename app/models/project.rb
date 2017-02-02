class Project < ActiveRecord::Base
  has_many :timeblocks
  has_many :users, through: :timeblocks
  has_many :comments, through: :timeblocks

  validates_presence_of :name

  accepts_nested_attributes_for :users

  def users_attributes=(users_attributes)
    users_attributes.values.each do |user_attributes|
      user = User.find_by(user_attributes)
      self.users << user if user && !self.users.include?(user)
    end
  end
end
