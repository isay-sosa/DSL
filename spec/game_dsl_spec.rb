require 'rspec'
require_relative '../lib/game_dsl.rb'

describe "GameDsl" do
  let(:library) { LIBRARY }
  before { library.reset }

  context '#add_game' do
    it 'adds a game to the library' do
      expect {
        add_game 'Mario Kart'
      }.to change { library.games.length }.by 1
    end
  end

  context '#with_game' do
    before do
      add_game 'Mario Kart 64' do
        system 'Nintendo 64'
        year 1996
      end
    end

    it 'print details' do
      details = with_game 'Mario Kart 64' do
        print_details
      end
      expect(details).to eql 'Mario Kart 64 - 1996 Nintendo 64'
    end
  end
end