class Bill < ApplicationRecord
    belongs_to :member, foreign_key: 'member_mid', primary_key: 'mid'

end
