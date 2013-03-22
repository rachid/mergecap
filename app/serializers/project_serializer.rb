class ProjectSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :name, :team_id
end
