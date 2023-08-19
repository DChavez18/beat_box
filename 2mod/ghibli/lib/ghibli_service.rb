require "httparty"
require "json"
require "./lib/film"

class GhibliService
  def get_films
    response = HTTParty.get("https://ghibliapi.vercel.app/films")
    parsed = JSON.parse(response.body, symbolize_names: true)
  
    # films = parsed.map do |film_data|
    #   Film.new(film_data)
    # end
  end
end