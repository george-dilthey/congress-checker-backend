class MemberShowSerializer < ActiveModel::Serializer
  def attributes(*args)
    object.attributes.symbolize_keys
  end

  has_many :roles
  has_many :bills
end
