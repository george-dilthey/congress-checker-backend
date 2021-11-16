class CreateBills < ActiveRecord::Migration[6.1]
  def change
    create_table :bills, id: false, primary_key: :bill_id do |t|
      t.string :member_mid, references: :members, null: false
      t.string :congress
      t.string :bill_id
      t.string :bill_type
      t.string :number
      t.string :bill_uri
      t.string :title
      t.string :short_title
      t.string :sponsor_title
      t.string :sponsor_id
      t.string :sponsor_name
      t.string :sponsor_state
      t.string :sponsor_party
      t.string :sponsor_uri
      t.string :gpo_pdf_uri
      t.string :congressdotgov_url
      t.string :govtrack_url
      t.string :introduced_date
      t.string :active
      t.string :last_vote
      t.string :house_passage
      t.string :senate_passage
      t.string :enacted
      t.string :vetoed
      t.integer :cosponsors
      t.string :cosponsors_by_party
      t.string :committees
      t.string :primary_subject
      t.string :summary
      t.string :summary_short
      t.string :latest_major_action_date
      t.string :latest_major_action
      
      t.timestamps
    end
    add_foreign_key :bills, :members, column: 'member_mid', primary_key: 'mid'
    execute "ALTER TABLE bills ADD PRIMARY KEY (bill_id);"

  end
end


