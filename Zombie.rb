require_relative "Creature.rb"

class Zombie < Creature

  def walk
    dentro_mapa = (1..MAP[0]).to_a

    if dentro_mapa.include?(self.position_x + rand(-1..1)) 
      self.position_x += rand(-1..1)
    else
      "Estoy en el borde"
    end
    if dentro_mapa.include?(self.position_y + rand(-1..1)) 
      self.position_y += rand(-1..1)
    else
      "Estoy en el borde"
    end
  end

  def information
    puts "El zombie " + super
  end

end

zombie1 = Zombie.new
zombie1.information
zombie1.walk
zombie1.information
zombie1.walk
zombie1.information
zombie1.walk
zombie1.information
