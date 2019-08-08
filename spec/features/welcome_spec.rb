require './spec/features/web_helpers.rb'
feature 'welcomes user' do
  scenario 'welcomes user to chitter' do
    visit('/')
    expect(page).to have_content 'Welcome to Chitter...'
  end
end
