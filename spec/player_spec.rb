require 'player'

describe Player do
  it "should return the name of the player" do
    subject = Player.new("Bob")
    expect(subject.name).to eq "Bob"
  end
end
