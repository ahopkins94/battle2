feature 'Testing attack' do
  scenario "can reduce player 2's hit points by 10" do
    sign_in_and_play
    click_button 'Hit'
    expect(page).to have_content "90HP"
  end
end
