require 'httparty'
require 'json'
require 'pry'
require './lib/film'

response = HTTParty.get("https://ghibliapi.herokuapp.com/films")

parsed = JSON.parse(response.body, symbolize_names: true)

films = parsed.map do |data|
  Film.new(data)
end

films.each do |film|
  puts film.title
  puts "Directed By: #{film.director}"
  puts "Produced By: #{film.producer}"
  puts "Rotten Tomatoes Score: #{film.rotten_tomatoes}"
  puts ""
end
