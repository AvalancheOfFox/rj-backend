# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'pry'
require 'rest-client'



# creates all of our questions from jService call! Thanks Randy
response = RestClient.get("http://jservice.io/api/clues")
response_hash = JSON.parse(response)
# binding.pry
response_hash.each do |question|
   Question.create( value: question["value"], category: question["category"]["title"], answer: question["answer"], question: question["question"])
end

User.create(username: 'test', password: 'test')
User.create(username: 'test2', password: 'tset')

