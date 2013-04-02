class Team < ActiveRecord::Base
  validates_presence_of :name
  belongs_to :user
  has_many :projects, dependent: :destroy
  attr_accessible :name, :slug

  extend FriendlyId
  friendly_id :name, use: :slugged
end
