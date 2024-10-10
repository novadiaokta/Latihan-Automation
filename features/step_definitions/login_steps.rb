Given('I am on the Swag Labs login page') do
  visit 'https://www.saucedemo.com/v1/index.html'
end

When('I log in with username {string} and password {string}') do |string, string2|
  fill_in 'user-name', with: 'standard_user'
  fill_in 'password', with: 'secret_sauce'

  click_on 'LOGIN'
  
end

Then('I should see the products page') do
  expect(page).to have_content('Products')
end