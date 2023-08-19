require "httparty"
require "json"
require "pry"
require "./lib/ghibli_search"


films = GhibliSearch.new.create_film_object
# response = HTTParty.get("https://ghibliapi.vercel.app/films")
# parsed = JSON.parse(response.body, symbolize_names: true)

# films = parsed.map do |film_data|
#   Film.new(film_data)
# end

films.each do |film|
  puts film.title
  puts "Directed By: #{film.director}"
  puts "Produced By: #{film.producer}"
  puts "Rotten Tomatoes Score: #{film.rotten_tomatoes}"
  puts ""
end
# binding.pry

