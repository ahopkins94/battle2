# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'Testing battle' do
  scenario 'can submit names' do
    visit('/')
    fill_in('player_1',with: "Steve")
    fill_in('player_2',with: "Bob")
    click_button('Submit')
    expect(page).to have_content "Steve vs Bob"
  end
end
