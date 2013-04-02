class ProjectMember < ActiveRecord::Base
  attr_accessible :member_id, :mergecap, :project_id
  belongs_to :project
  belongs_to :member
end
