class Qualification
  # TODO: make config
  URL = 'https://api.gojimo.net/api/v4/qualifications/'.freeze

  attr_reader :name, :id, :subjects

  def self.fetch_all
    JSON.parse(Faraday.get(URL).body).map do |qualification|
      new(qualification)
    end
  end

  def self.fetch(id:)
    new(JSON.parse(Faraday.get(URI.join(URL,id)).body))
  end

  def initialize(json)
    @id = json['id']
    @name = json['name']
    @subjects = json['subjects'].map{|subject_json| Subject.new(subject_json)}
  end
end
