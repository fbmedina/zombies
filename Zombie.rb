require_relative "Creature.rb"

class Zombie < Creature
  
  def in_map
    super
  end

  def information
    super
  end

  def walk
    if in_map
      self.position_x += rand(-1..1)
      self.position_y += rand(-1..1)
    else
      "Estoy en la orilla"
    end
  end

end

zombie1 = Zombie.new("zombie")
zombie1.information
zombie1.walk
zombie1.information
zombie1.in_map
zombie1.walk
zombie1.information
zombie1.in_map
zombie1.walk
zombie1.information
zombie1.in_map
