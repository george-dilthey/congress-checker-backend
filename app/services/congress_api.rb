class CongressApi

    def initialize
    end

    def get_members(congress, chamber)
        uri = URI.parse("https://api.propublica.org/congress/v1/#{congress}/#{chamber}/members.json")

        result = HTTParty.get(uri, :headers => { 'content-type': 'application/json', 'X-API-Key': ENV['PROPUBLICA_API_KEY'] })

        members_arr = result['results'][0]['members']
        members_arr.map do |member|
            Member.find_or_create_by(id: member["id"]) do |new_member|
                new_member.id = member["id"]
                new_member.title = member["title"]
                new_member.short_title = member["short_title"]
                new_member.api_uri = member["api_uri"]
                new_member.first_name = member["first_name"]
                new_member.middle_name = member["middle_name"]
                new_member.last_name = member["last_name"]
                new_member.suffix = member["suffix"]
                new_member.date_of_birth = member["date_of_birth"]
                new_member.gender = member["gender"]
                new_member.party = member["party"]
                new_member.leadership_role = member["leadership_role"]
                new_member.twitter_account = member["twitter_account"]
                new_member.facebook_account = member["facebook_account"]
                new_member.youtube_account = member["youtube_account"]
                new_member.govtrack_id = member["govtrack_id"]
                new_member.cspan_id = member["cspan_id"]
                new_member.votesmart_id = member["votesmart_id"]
                new_member.icpsr_id = member["icpsr_id"]
                new_member.crp_id = member["crp_id"]
                new_member.google_entity_id = member["google_entity_id"]
                new_member.fec_candidate_id = member["fec_candidate_id"]
                new_member.url = member["url"]
                new_member.rss_url = member["rss_url"]
                new_member.contact_form = member["contact_form"]
                new_member.in_office = member["in_office"]
                new_member.cook_pvi = member["cook_pvi"]
                new_member.dw_nominate = member["dw_nominate"]
                new_member.ideal_point = member["ideal_point"]
                new_member.seniority = member["seniority"]
                new_member.next_election = member["next_election"]
                new_member.total_votes = member["total_votes"]
                new_member.missed_votes = member["missed_votes"]
                new_member.total_present = member["total_present"]
                new_member.last_updated = member["last_updated"]
                new_member.ocd_id = member["ocd_id"]
                new_member.office = member["office"]
                new_member.phone = member["phone"]
                new_member.fax = member["fax"]
                new_member.state = member["state"]
                new_member.senate_class = member["senate_class"]
                new_member.state_rank = member["state_rank"]
                new_member.lis_id = member["lis_id"]
                new_member.missed_votes_pct = member["missed_votes_pct"]
                new_member.votes_with_party_pct = member["votes_with_party_pct"]
                new_member.votes_against_party_pct = member["votes_against_party_pct"]
                new_member.image_225x275 = "https://theunitedstates.io/images/congress/225x275/#{member["id"]}.jpg"
            end
        end
    end

    def get_member(id)
        uri = uri = URI.parse("https://api.propublica.org/congress/v1/members/#{id}.json")

        result = HTTParty.get(uri, :headers => { 'content-type': 'application/json', 'X-API-Key': ENV['PROPUBLICA_API_KEY'] })
    end
end