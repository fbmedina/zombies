require_relative "Creature.rb"

class Person < Creature

  def run
    dentro_mapa_x = (1..MAP[0]).to_a
    dentro_mapa_y = (1..MAP[1]).to_a
    random_run = rand(-2..2)

    if dentro_mapa_x.include?(self.position_x + random_run) 
      self.position_x += random_run
    end
    if dentro_mapa_y.include?(self.position_y + random_run) 
      self.position_y += random_run
    end
  end

  def information
    puts "La persona " + super
  end

end

person1 = Person.new
person1.information
person1.run
person1.information
person1.run
person1.information
person1.run
person1.information
