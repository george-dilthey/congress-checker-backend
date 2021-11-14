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
        Member.find_or_create_by(member_id: member["member_id"]) do |new_member|
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
    end
end