class Library
  attr_reader :games

  def initialize
    reset
  end

  def add_game(game)
    @games << game
  end

  def reset
    @games = []
  end

  def find_by_name(game_name)
    @games.detect { |game| game.name == game_name }
  end
end