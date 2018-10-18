require 'game'

describe Game do

let(:steve) { double :steve }

describe '#attack' do
  it 'should attack' do
    expect(steve).to receive(:receive_damage)
    subject.attack(steve)
  end
end

end
