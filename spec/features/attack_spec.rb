feature 'Testing attack' do
  scenario "can get confirmation of hit" do
    sign_in_and_play
    click_button 'Hit'
    expect(page).to have_content "player hit"
  end
end
