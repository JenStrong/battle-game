require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  subject(:player_1) { double :player }
  subject(:player_2) { double :player}

  describe '#player_1' do
    it 'returns the first player' do
      expect(game.player_1 ).to eq player_1
    end
  end

  describe '#player_2' do
    it 'returns the second player' do
      expect(game.player_2 ).to eq player_2
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(game.player_2).to receive(:receive_damage)
      game.attack(game.player_2)
    end
  end
end
