class ProjectMemberSerializer < ActiveModel::Serializer
  attributes :id, :project_id, :member_id
end
