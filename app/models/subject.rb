class Subject
  attr_reader :color, :name

  def initialize(json)
    @color = json['colour']
    @name = json['name']
  end
end
