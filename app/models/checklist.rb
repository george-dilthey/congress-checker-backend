class Checklist < ApplicationRecord
  belongs_to :user
  has_many :checklist_members
  has_many :members, -> { distinct }, through: :checklist_members
end
