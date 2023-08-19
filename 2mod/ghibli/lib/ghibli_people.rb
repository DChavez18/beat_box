require "httparty"
require "json"
require "pry"
require "./lib/people"

response = HTTParty.get("https://ghibliapi.vercel.app/people")
parsed = JSON.parse(response.body, symbolize_names: true)

peoples = parsed.map do |people_data|
  People.new(people_data)
end

peoples.each do |people|
  puts people.name
  puts people.age
  puts people.gender
  puts people.eye_color
  puts people.hair_color
  puts "=============="
end
