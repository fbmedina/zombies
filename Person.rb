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

  def danger(zombie)
    close_to_zombie = false

    if position_x.between(zombie.position_x - 3, zombie.position_x + 3)
      close_to_zombie = true
    end
    if position_y.between(zombie.position_y - 3, zombie.position_y + 3)
      close_to_zombie = true
    end
  end

  def scream(zombie)
    if close_to_zombie == true
      puts "¡Ayuda! ¡El zombie #{zombie.name} está cerca!"
      self.information
      zombie.information
    end
  end

  def dying

  end

end