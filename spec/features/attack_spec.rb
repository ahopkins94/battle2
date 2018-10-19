feature 'Testing attack' do
  scenario "can attack player 2" do
    sign_in_and_play
    click_button 'Hit'
    expect(page).to have_content "Steve hit Bob"
  end
end
