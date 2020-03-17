class Bears
  attr_accessor :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
    @fish = []
  end

  def add_fish(name)
    @fish.push(name)
    @stomach.push(name)
  end

  def fish_count
    @fish.size
  end

  def food_count
    @stomach.size
  end

  def roar
    return "Roar"
  end
end
