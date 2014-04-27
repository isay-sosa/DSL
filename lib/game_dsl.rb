require_relative '../lib/game.rb'
require_relative '../lib/library.rb'

LIBRARY = Library.new

def add_game(name, &block)
  game = Game.new(name)
  game.instance_eval(&block) if block_given?
  LIBRARY.add_game(game)
end

def with_game(name, &block)
  LIBRARY.find_by_name(name).instance_eval(&block) if block_given?
end