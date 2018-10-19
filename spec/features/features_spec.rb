feature 'Testing battle' do
  scenario 'can submit names' do
    sign_in_and_play
    expect(page).to have_content "Steve vs Bob"
  end

  scenario "can see player 2's hitpoints" do
    sign_in_and_play
    expect(page).to have_content "100HP"
  end
end
