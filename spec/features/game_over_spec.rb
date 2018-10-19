feature 'Game over' do
  scenario 'game over when one person reaches 0HP' do
    allow(Kernel).to receive(:rand){10}
    sign_in_and_play
    19.times { click_button 'Hit' }
    expect(page).to have_content 'Steve wins'
  end
end
