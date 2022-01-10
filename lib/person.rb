class Person
  attr_reader :name, :age, :films
  def initialize(data)
    @name = data[:name]
    @age  = data[:age]
    @films = generate_films(data[:films])
  end

  def generate_films(films)
    films.map do |film|
      Film.new(service.single_film(film))
    end
  end

  def service 
    GhibliService.new
  end
end