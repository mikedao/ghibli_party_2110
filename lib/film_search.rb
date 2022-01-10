
class FilmSearch

  def film_information
    service.films.map do |data|
      Film.new(data)
    end
  end

  def persons
    service.persons.map do |data|
      Person.new(data)
    end
  end

  def service
    GhibliService.new
  end
end