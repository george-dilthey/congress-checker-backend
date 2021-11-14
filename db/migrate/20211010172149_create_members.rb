class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members, {:id => false} do |t|
      t.string :member_id
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :suffix
      t.string :date_of_birth
      t.string :gender
      t.string :url
      t.string :times_topics_url
      t.string :times_tag
      t.string :govtrack_id
      t.string :cspan_id
      t.string :votesmart_id
      t.string :icpsr_id
      t.string :twitter_account
      t.string :facebook_account
      t.string :youtube_account
      t.string :crp_id
      t.string :google_entity_id
      t.string :rss_url
      t.string :in_office
      t.string :current_party
      t.string :most_recent_vote
      t.string :last_updated
      t.string :image_225x275
      t.string :image_450x550
    
      t.timestamps
    end
    execute "ALTER TABLE members ADD PRIMARY KEY (member_id);"
  end
end


