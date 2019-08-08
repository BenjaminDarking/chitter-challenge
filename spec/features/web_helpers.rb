
def sign_in
visit('/')
fill_in('username', with: 'Benjamin')
fill_in('password', with: 'password')
click_button('Submit')
end
