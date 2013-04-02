class ProjectSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :name, :team_id, :mergecap
  has_many :members
  has_many :project_members
end
