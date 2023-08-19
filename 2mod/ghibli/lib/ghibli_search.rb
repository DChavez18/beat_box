require "./lib/ghibli_service"
require "./lib/film"


class GhibliSearch
  # facade
  def create_film_object
    films = GhibliService.new.get_films
    films = films.map do |film_data|
      Film.new(film_data)
    end
  end
end