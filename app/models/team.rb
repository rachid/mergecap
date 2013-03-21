class Team < ActiveRecord::Base
  validates_presence_of :name
  belongs_to :user
  has_many :projects
  attr_accessible :name
end
