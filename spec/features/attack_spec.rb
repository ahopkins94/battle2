feature 'Testing attack' do
#   scenario "can get confirmation of hit" do
#     sign_in_and_play
#     click_button 'Hit'
#     expect(page).to have_content "Bob hit"
#   end
  scenario "can reduce player 2's hit points by 10" do
    sign_in_and_play
    click_button 'Hit'
    expect(page).to have_content "90HP"
  end
  # scenario "players can take it in turns to attack" do
  #   sign_in_and_play
  #   click_button 'Hit'
  #   click_button 'Hit'
  #   expect(page).to have_content "Steve hit"
  # end
end
