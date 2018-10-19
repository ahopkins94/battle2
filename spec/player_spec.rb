require 'player'

describe Player do
  subject(:bob) { Player.new('Bob') }
  subject(:steve) {Player.new('Steve')}

  describe '#name' do
    it 'returns the name' do
      expect(bob.name).to eq 'Bob'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(bob.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'should receive damage' do
      allow(Kernel).to receive(:rand){10}
      expect { steve.receive_damage }.to change { steve.hit_points }.by(-10)
    end
  end
end
