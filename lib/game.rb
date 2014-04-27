class Game
  attr_reader :name, :system, :year

  def initialize(name)
    @name = name
  end

  def system(system)
    @system = system
  end

  def year(year)
    @year = year
  end

  def print_details
    "#{@name} - #{@year} #{@system}"
  end
end