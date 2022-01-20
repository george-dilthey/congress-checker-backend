# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#rails g resource Members id:string title:string short_title:string api_uri:string first_name:string middle_name:string last_name:string suffix:string date_of_birth:date gender:string party:string leadership_role:string twitter_account:string facebook_account:string youtube_account:string govtrack_id:string cspan_id:string votesmart_id:string icpsr_id:string crp_id:string google_entity_id:string fec_candidate_id:string url:string rss_url:string contact_form:string in_office:string cook_pvi:string dw_nominate:float ideal_point:string seniority:string next_election:string total_votes:integer missed_votes:integer total_present:integer last_updated:datetime ocd_id:string office:string phone:string fax:string state:string senate_class:string state_rank:string lis_id:string missed_votes_pct:float votes_with_party_pct:float votes_against_party_pct:float

CongressApi.new.get_members(117,'senate')
CongressApi.new.get_members(116,'senate')
CongressApi.new.get_members(115,'senate')
CongressApi.new.get_members(114,'senate')
CongressApi.new.get_members(113,'senate')
CongressApi.new.get_members(112,'senate')
CongressApi.new.get_members(111,'senate')
CongressApi.new.get_members(110,'senate')
CongressApi.new.get_members(109,'senate')
CongressApi.new.get_members(108,'senate')
CongressApi.new.get_members(107,'senate')
CongressApi.new.get_members(106,'senate')
CongressApi.new.get_members(105,'senate')
CongressApi.new.get_members(104,'senate')
CongressApi.new.get_members(103,'senate')
CongressApi.new.get_members(102,'senate')
CongressApi.new.get_members(101,'senate')
CongressApi.new.get_members(100,'senate')

CongressApi.new.get_members(117,'house')
CongressApi.new.get_members(116,'house')
CongressApi.new.get_members(115,'house')
CongressApi.new.get_members(114,'house')
CongressApi.new.get_members(113,'house')
CongressApi.new.get_members(112,'house')
CongressApi.new.get_members(111,'house')
CongressApi.new.get_members(110,'house')
CongressApi.new.get_members(109,'house')
CongressApi.new.get_members(108,'house')
CongressApi.new.get_members(107,'house')
CongressApi.new.get_members(106,'house')
CongressApi.new.get_members(105,'house')
CongressApi.new.get_members(104,'house')
CongressApi.new.get_members(103,'house')
CongressApi.new.get_members(102,'house')

