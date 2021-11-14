class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.string :member_mid, references: :members, null: false
      t.string :congress
      t.string :chamber
      t.string :title
      t.string :short_title
      t.string :state
      t.string :party
      t.string :leadership_role
      t.string :fec_candidate_id
      t.string :seniority
      t.string :district
      t.string :ocd_id
      t.string :start_date
      t.string :end_date
      t.string :office
      t.string :phone
      t.string :fax
      t.string :contact_form
      t.string :cook_pvi
      t.string :dw_nominate
      t.string :ideal_point
      t.string :next_election
      t.integer :total_votes
      t.integer :missed_votes
      t.integer :total_present
      t.string :senate_class
      t.string :state_rank
      t.string :lis_id
      t.integer :bills_sponsored
      t.integer :bills_cosponsored
      t.integer :missed_votes_pct
      t.integer :votes_with_party_pct
      t.integer :votes_against_party_pct
      t.timestamps
    end
    # rename_column :roles, :member_mid_id, :member_mid
    add_foreign_key :roles, :members, column: 'member_mid', primary_key: 'mid'
  end
end