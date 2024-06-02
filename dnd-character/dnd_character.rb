class DndCharacter
attr_reader :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :hitpoints
  def self.modifier(mod)
    (mod - 10) / 2
  end

  def attributes
    %i[strength dexterity constitution intelligence wisdom charisma]
  end

  def initialize
    @strength = get_attribute
    @dexterity = get_attribute
    @constitution = get_attribute
    @intelligence = get_attribute
    @wisdom = get_attribute
    @charisma = get_attribute
    @hitpoints = 10 + self.class.modifier(@constitution)
  end

  def get_attribute
    rolls = Array.new(4) { rand(1..6) }
    rolls.delete_at(rolls.index(rolls.min))
    rolls.sum
  end
end
