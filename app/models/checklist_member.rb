class ChecklistMember < ApplicationRecord
  belongs_to :checklist
  belongs_to :member, foreign_key: 'member_mid', primary_key: 'mid'
end
