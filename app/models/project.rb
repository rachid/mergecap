class Project < ActiveRecord::Base
  attr_accessible :name, :team_id
  belongs_to :project
end
