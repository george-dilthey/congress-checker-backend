class Bill < ApplicationRecord
    belongs_to :member, foreign_key: 'member_mid'

end
