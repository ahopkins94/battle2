# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

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
