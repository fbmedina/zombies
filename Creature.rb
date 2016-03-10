require_relative "MAP.rb"

class Creature

  @@names = ["Brent Pearson", "Sandy Vazquez", "Eli Bennett", "Ariana Martinez", "Rodolfo Stevens", "Mallory Molina", "Holly Park", "Roberto Salinas", "Miranda Vasquez", "Jackson Logan", "Antonio Moreno", "Devon Webb", "Emma Kim", "Jillian Wong", "Alice Montgomery", "Vanessa Shaw", "Casey Lawson", "Jaclyn Graves", "Brent Hoffman", "Jonathan Pearson", "Yvonne Campos", "Deanna Jensen", "Dennis Shaw", "Jessica Nichols", "Sabrina Ramsey", "Lance Welch", "Daniela Mack", "Madeleine Holt", "Dominick Elliott"]

  attr_reader :name
  attr_accessor :position_x, :position_y, :type

  def initialize(type)
    @type = type
    @name = @@names.sample
    @position_x = rand(0..MAP[0])
    @position_y = rand(0..MAP[1])
  end

  def in_map
    if position_x > MAP[0] || position_x < 1
      return false
    elsif position_y > MAP[1] || position_y < 1
      return false
    else
      return true
    end
  end

  def information
    puts "#{self.name}, que es un #{self.type}, está en la posición #{self.position_x},#{self.position_y}."
  end

end
