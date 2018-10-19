require 'game'

describe Game do

let(:steve) { double :steve }
let(:bob) { double :bob }
let(:game) { Game.new(steve, bob) }

describe '#attack' do
  it 'should attack' do
    expect(bob).to receive(:receive_damage)
    game.attack(bob)
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

describe '#current_turn' do
  it 'starts with player 1' do
    expect(game.current_turn).to eq steve
  end
end

end
