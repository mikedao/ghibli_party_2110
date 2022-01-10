class GhibliService
  def films
    get_url("/films")
  end

  def characters
    get_url("/characters")
  end
  
  def get_url(url)
    response = HTTParty.get("https://ghibliapi.herokuapp.com#{url}")
    JSON.parse(response.body, symbolize_names: true)
  end
end