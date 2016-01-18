class User < ActiveRecord::Base
  has_many :teams
  has_many :projects, through: :teams
  has_many :tasks

  validates :first_name, presence: true
  validates :last_name, presence: true
end
