class Member < ApplicationRecord
    def attributes_protected_by_default
        []
    end
    self.primary_key = 'mid'
    has_many :roles, primary_key: 'mid', foreign_key: 'member_mid'
end
