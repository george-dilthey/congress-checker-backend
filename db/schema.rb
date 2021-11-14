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

ActiveRecord::Schema.define(version: 2021_10_10_172149) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "members", primary_key: "member_id", force: :cascade do |t|
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

end
