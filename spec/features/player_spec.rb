require 'player'

describe Player do
  subject(:jen) { Player.new('Jen') }
  subject(:jon) { Player.new('Jon') }

  describe '#name' do
    it 'returns the name' do
      expect(jon.name).to eq 'Jon'
    end
  end

  describe '#hit_points' do
    it 'shows the hit points' do
      expect(jon.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(jon).to receive(:receive_damage)
      jen.attack(jon)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { jon.receive_damage }.to change { jon.hit_points }.by(-10)
    end
  end
end
