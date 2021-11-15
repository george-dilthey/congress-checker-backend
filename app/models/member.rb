class Member < ApplicationRecord
    self.primary_key = 'mid'
    has_many :roles, primary_key: 'mid', foreign_key: 'member_mid'
end
