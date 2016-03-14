require_relative "Creature.rb"

class Zombie < Creature

  def walk
    dentro_mapa_x = (1..MAP[0]).to_a
    dentro_mapa_y = (1..MAP[1]).to_a
    random_walk = rand(-1..1)

    if dentro_mapa_x.include?(self.position_x + random_walk) 
      self.position_x += random_walk
    end
    if dentro_mapa_y.include?(self.position_y + random_walk) 
      self.position_y += random_walk
    end
  end

  def information
    puts "El zombie " + super
  end

  def talk 
    puts "¡Brains!"
  end

end
