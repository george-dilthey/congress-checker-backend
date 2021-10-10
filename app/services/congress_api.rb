class CongressApi

    def initialize

    end

    def get_members(congress, chamber)
        uri = URI.parse("https://api.propublica.org/congress/v1/#{congress}/#{chamber}/members.json")

        result = HTTParty.get(uri, :headers => { 'content-type': 'application/json', 'X-API-Key': ENV['PROPUBLICA_API_KEY'] })

        puts result

    end

end