feature 'switching turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Steve's turn"
    end
    scenario 'second turn' do
      sign_in_and_play
      click_button 'Hit'
      expect(page).to have_content "Bob's turn"
    end
  end
end
