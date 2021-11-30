class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :checklists

  def checklists
    ActiveModel::SerializableResource.new(object.checklists,  each_serializer: ChecklistSerializer)
  end

end
