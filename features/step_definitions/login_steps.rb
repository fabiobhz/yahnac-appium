#coding: utf-8

Given("I am in the home screen") do
  @home_screen = FirstHomeScreen.new
end

When("I log into the app") do
  steps 'And I am in the home screen
  		And I touch the menu icon
  		And I touch the login page link
  		And I am in the login page 
  		And I fill the username field
  		And I fill the password field
  		And I touch the sign in button'
end

And("I touch the menu icon") do
	@home_screen.click_menu_icon
end

And("I fill the username field") do
	@login_page.fill_username
end

And("I fill the password field") do
	@login_page.fill_right_password
end

And("I touch the sign in button") do
	@login_page.touch_sign_in_button
	sleep = 5
end

And("I am in the login page") do
	@login_page = LoginScreen.new
end

And("I am in the menu view") do
	@menu_view_screen = MenuViewScreen.new
	@menu_view_screen.access_menu_view
end

And("I touch the login page link") do
	@home_screen.touch_login_page
end

Then("I should see the login confirmation") do
  	steps 'And I am in the home screen
  		And I touch the menu icon'
 	@home_screen.check_welcome_message
end

When("I try log into the app with wrong credentials") do
  steps 'And I am in the home screen
  		And I touch the menu icon
  		And I touch the login page link
  		And I am in the login page 
  		And I fill the username field
  		And I fill the password field with wrong password 
  		And I touch the sign in button'
end

And("I fill the password field with wrong password") do
	@login_page.fill_wrong_password
end

Then("I should see login error") do
  	@login_page.check_login_error
end

When("I navigate to the login screen") do
  steps 'And I am in the home screen
  		And I touch the menu icon
  		And I touch the login page link
  		And I am in the login page' 	
end

And("I cancel the action") do
	@login_page.cancel_login
end

And("I touch for go back") do
	@login_page.back_page
end

Then("I should see the menu content") do
  steps 'And I am in the login page'
end




