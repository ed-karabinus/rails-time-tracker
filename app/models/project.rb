class Project < ActiveRecord::Base
  has_many :sessions
  has_many :users, through: :sessions
  has_many :comments, through: :sessions

  validates_presence_of :name
end
