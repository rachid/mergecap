class MemberSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :name, :mergecap, :name, :avatar
end
