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
    person.information
    zombies.each do |zombie|
      zombie.walk
      zombie.information
      person.danger(zombie)
      person.dying(zombie)
      if person.dying(zombie)
        people.delete(person)
        zombies.push(Zombie.new(person.name))
      end
    end
  end


pp people
pp zombies

