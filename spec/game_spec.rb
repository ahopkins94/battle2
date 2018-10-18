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
  it 'should have a current_player equal to player_1' do
    expect(game.current_player).to eq steve
  end
end

# describe '#switch_players' do
#   it 'should switch players' do
#     expect(bob).to receive(:receive_damage)
#     game.attack(bob)
#     expect(steve).to receive(:receive_damage)
#     game.switch_players
#     expect(game.current_player).to eq bob
#   end
# end

end
