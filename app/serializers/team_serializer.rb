class TeamSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :name, :id, :slug
  has_many :projects
end
