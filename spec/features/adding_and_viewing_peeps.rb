feature 'Adding a new peep' do
  scenario 'A user can add a message(peep) to Chitter' do
    visit('/welcome')
    fill_in('peep', with: 'This is my peep')
    click_button('Peep')
    expect(page).to have_content 'This is my peep'
  end
end
