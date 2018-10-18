require 'game'

describe Game do

let(:steve) { double :steve }
let(:bob) { double :bob }
let(:game) { Game.new(steve, bob) }

describe '#attack' do
  it 'should attack' do
    expect(steve).to receive(:receive_damage)
    game.attack(steve)
  end
end

describe '#initialize' do
  it 'should take the first player' do
    expect(game.player_1).to eq steve
  end
  it 'should take the second player' do
    expect(game.player_2).to eq bob
  end
end

end
