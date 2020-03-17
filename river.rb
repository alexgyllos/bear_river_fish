class River

  attr_accessor :name

  def initialize(name)
    @name = name
    @fish = []
  end

  def add_fish(name)
    @fish.push(name)
  end

  def lose_fish(name)
    @fish.delete(name)
  end

  def fish_count
    @fish.size
  end

  def lose_fish_to_bear(fish_name, bear)
    bear.add_fish(fish_name)
    lose_fish(fish_name)
  end
end
