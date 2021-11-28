class Member < ApplicationRecord
    self.primary_key = 'mid'
    has_many :roles, primary_key: 'mid', foreign_key: 'member_mid'
    has_many :bills, primary_key: 'mid', foreign_key: 'member_mid'
    has_many :checklist_members, primary_key: 'mid', foreign_key: 'member_mid'
    has_many :checklists, through: :checklist_members
end