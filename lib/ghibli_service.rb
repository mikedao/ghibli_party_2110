class GhibliService
  def films
    get_url("/films")
  end

  def persons
    get_url("/people")
  end

  def single_film(id)
    id = id.gsub("https://ghibliapi.herokuapp.com","")
    get_url(id)
  end

  def get_url(url)
    response = HTTParty.get("https://ghibliapi.herokuapp.com#{url}")
    JSON.parse(response.body, symbolize_names: true)
  end
end