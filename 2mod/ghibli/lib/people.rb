class People
  attr_reader :name,
              :gender,
              :age,
              :eye_color,
              :hair_color
  def initialize(data)
  	@name = data[:name]
	  @gender = data[:gender]
	  @age = data[:age]
  	@eye_color = data[:eye_color]
  	@hair_color = data[:hair_color]
  end
end