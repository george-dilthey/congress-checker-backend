class MemberSerializer < ActiveModel::Serializer
   attributes :mid, :image_225x275, :first_name, :last_name

   has_many :roles
end
