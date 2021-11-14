# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_14_040253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "members", primary_key: "mid", id: :string, force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "suffix"
    t.string "date_of_birth"
    t.string "gender"
    t.string "url"
    t.string "times_topics_url"
    t.string "times_tag"
    t.string "govtrack_id"
    t.string "cspan_id"
    t.string "votesmart_id"
    t.string "icpsr_id"
    t.string "twitter_account"
    t.string "facebook_account"
    t.string "youtube_account"
    t.string "crp_id"
    t.string "google_entity_id"
    t.string "rss_url"
    t.string "in_office"
    t.string "current_party"
    t.string "most_recent_vote"
    t.string "last_updated"
    t.string "image_225x275"
    t.string "image_450x550"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "member_mid", null: false
    t.string "congress"
    t.string "chamber"
    t.string "title"
    t.string "short_title"
    t.string "state"
    t.string "party"
    t.string "leadership_role"
    t.string "fec_candidate_id"
    t.string "seniority"
    t.string "district"
    t.string "ocd_id"
    t.string "start_date"
    t.string "end_date"
    t.string "office"
    t.string "phone"
    t.string "fax"
    t.string "contact_form"
    t.string "cook_pvi"
    t.string "dw_nominate"
    t.string "ideal_point"
    t.string "next_election"
    t.integer "total_votes"
    t.integer "missed_votes"
    t.integer "total_present"
    t.string "senate_class"
    t.string "state_rank"
    t.string "lis_id"
    t.integer "bills_sponsored"
    t.integer "bills_cosponsored"
    t.integer "missed_votes_pct"
    t.integer "votes_with_party_pct"
    t.integer "votes_against_party_pct"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "roles", "members", column: "member_mid", primary_key: "mid"
end
