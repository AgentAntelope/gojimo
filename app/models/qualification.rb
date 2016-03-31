class Qualification
  # TODO: make config
  URL = 'https://api.gojimo.net/api/v4/qualifications'

  attr_reader :name, :subjects

  def self.fetch_all
    JSON.parse(Faraday.get(URL).body).map do |qualification|
      new(qualification)
    end
  end

  def initialize(json)
    @name = json['name']
  end
end
