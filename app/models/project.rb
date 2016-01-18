class Project < ActiveRecord::Base
  has_many :teams
  has_many :users, through: :teams
  has_many :tasks

  validates :name, presence: true
end
