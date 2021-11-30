class ChecklistSerializer < ActiveModel::Serializer
  attributes :id

  has_many :members
end
