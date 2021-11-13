class MemberSerializer < ActiveModel::Serializer
   attributes :id, :member_id, :image_225x275, :congress, :in_office, :state_name, :first_name, :last_name, :party, :short_title, :chamber
end
