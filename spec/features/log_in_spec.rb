require_relative './web_helpers.rb'

feature 'signing up' do
  scenario 'User signs up to chitter' do
    visit('/')
    fill_in('username', with: 'Benjamin')
    fill_in('password', with: 'password')
    click_button('Submit')

    expect(current_path).to eq "/home"
  end
end
