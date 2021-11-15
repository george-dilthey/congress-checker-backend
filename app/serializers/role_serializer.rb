class RoleSerializer < ActiveModel::Serializer
   attributes :member_mid, :congress, :chamber, :title, :short_title, :state, :party, :leadership_role, :district, :start_date, :end_date, :office, :phone, :fax, :contact_form, :next_election, :total_votes, :missed_votes, :total_present, :senate_class, :state_rank, :bills_sponsored, :bills_cosponsored, :missed_votes_pct, :votes_with_party_pct, :votes_against_party_pct, :member
end
 
