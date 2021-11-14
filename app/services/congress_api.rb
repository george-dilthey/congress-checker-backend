class CongressApi

    def initialize
    end

    def get_members(congress, chamber)
        uri = URI.parse("https://api.propublica.org/congress/v1/#{congress}/#{chamber}/members.json")

        result = HTTParty.get(uri, :headers => { 'content-type': 'application/json', 'X-API-Key': ENV['PROPUBLICA_API_KEY'] })

        members_arr = result['results'][0]['members']
        members_arr.map do |member|
            get_member(member['api_uri'])
        end
    end

    def get_member(api_uri)
        uri = URI.parse(api_uri)
        result = HTTParty.get(uri, :headers => { 'content-type': 'application/json', 'X-API-Key': ENV['PROPUBLICA_API_KEY'] })
        
        member = result['results'][0]
        Member.find_or_create_by(mid: member["member_id"]) do |new_member|
            new_member.mid = member["member_id"]
            new_member.first_name = member["first_name"]
            new_member.middle_name = member["middle_name"]
            new_member.last_name = member["last_name"]
            new_member.suffix = member["suffix"]
            new_member.date_of_birth = member["date_of_birth"]
            new_member.gender = member["gender"]
            new_member.url = member["url"]
            new_member.times_topics_url = member["times_topics_url"]
            new_member.times_tag = member["times_tag"]
            new_member.govtrack_id = member["govtrack_id"]
            new_member.cspan_id = member["cspan_id"]
            new_member.votesmart_id = member["votesmart_id"]
            new_member.icpsr_id = member["icpsr_id"]
            new_member.twitter_account = member["twitter_account"]
            new_member.facebook_account = member["facebook_account"]
            new_member.youtube_account = member["youtube_account"]
            new_member.crp_id = member["crp_id"]
            new_member.google_entity_id = member["google_entity_id"]
            new_member.rss_url = member["rss_url"]
            new_member.in_office = member["in_office"]
            new_member.current_party = member["current_party"]
            new_member.most_recent_vote = member["most_recent_vote"]
            new_member.last_updated = member["last_updated"]
            new_member.image_225x275 = "https://theunitedstates.io/images/congress/225x275/#{member["id"]}.jpg"
            new_member.image_450x550 = "https://theunitedstates.io/images/congress/450x550/#{member["id"]}.jpg"
        end
        getRole(member["roles"], member["member_id"])
    end

    def getRole(roles, id)
        if roles
            roles.map do |role|
                Role.find_or_create_by(member_mid: id, congress: role['congress']) do |new_role|
                    new_role.member_mid = id
                    new_role.congress = role["congress"]
                    new_role.chamber = role["chamber"]
                    new_role.title = role["title"]
                    new_role.short_title = role["short_title"]
                    new_role.state = role["state"]
                    new_role.party = role["party"]
                    new_role.leadership_role = role["leadership_role"]
                    new_role.fec_candidate_id = role["fec_candidate_id"]
                    new_role.seniority = role["seniority"]
                    new_role.district = role["district"]
                    new_role.ocd_id = role["ocd_id"]
                    new_role.start_date = role["start_date"]
                    new_role.end_date = role["end_date"]
                    new_role.office = role["office"]
                    new_role.phone = role["phone"]
                    new_role.fax = role["fax"]
                    new_role.contact_form = role["contact_form"]
                    new_role.cook_pvi = role["cook_pvi"]
                    new_role.dw_nominate = role["dw_nominate"]
                    new_role.ideal_point = role["ideal_point"]
                    new_role.next_election = role["next_election"]
                    new_role.total_votes = role["total_votes"]
                    new_role.missed_votes = role["missed_votes"]
                    new_role.total_present = role["total_present"]
                    new_role.senate_class = role["senate_class"]
                    new_role.state_rank = role["state_rank"]
                    new_role.lis_id = role["lis_id"]
                    new_role.bills_sponsored = role["bills_sponsored"]
                    new_role.bills_cosponsored = role["bills_cosponsored"]
                    new_role.missed_votes_pct = role["missed_votes_pct"]
                    new_role.votes_with_party_pct = role["votes_with_party_pct"]
                    new_role.votes_against_party_pct = role["votes_against_party_pct"]
                end
            end 
        end   
    end
end