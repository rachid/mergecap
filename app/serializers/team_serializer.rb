class TeamSerializer < ActiveModel::Serializer
  attributes :name, :id
  has_many :projects
end
