require "pp"

require_relative "MAP.rb"
require_relative "Creature.rb"
require_relative "Zombie.rb"
require_relative "Person.rb"

people = []
zombies = []

5.times do
  people.push(Person.new)
end

5.times do
  zombies.push(Zombie.new)
end

pp people
pp zombies

people.each do |person|
  person.run
  zombies.each do |zombie|
    zombie.walk
  end
end

pp people
pp zombies

