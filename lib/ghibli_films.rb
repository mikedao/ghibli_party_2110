require 'httparty'
require 'json'
require 'pry'
require './lib/film'
require './lib/person'
require './lib/film_search'
require './lib/ghibli_service'

search = FilmSearch.new

# search.film_information.each do |film|
#   puts film.title
#   puts "Directed By: #{film.director}"
#   puts "Produced By: #{film.producer}"
#   puts "Rotten Tomatoes Score: #{film.rotten_tomatoes}"
#   puts ""
# end

search.persons.each do |person|
  puts "Name: #{person.name}"
  puts "Age: #{person.age}"
  person.films.each do |film|
    puts film.title
  end
  puts ""
end
