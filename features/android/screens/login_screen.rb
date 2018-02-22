#coding: utf-8

class LoginScreen
	def initialize
		@username = 'login_username'
		@password = 'login_password'
		@login_page = 'view_drawer_header_login'
		@sign_in_button = 'login_login'
		@cancel_button = 'login_cancel'
		@back_button = 'android.widget.ImageButton'
		@login_error = 'login_error_label'
	end

	def fill_username
		find_element(id: @username).send_keys(LOGIN[:username])
	end

	def fill_right_password
		find_element(id: @password).send_keys(LOGIN[:password])
	end

	def fill_wrong_password
		find_element(id: @password).send_keys(LOGIN[:wrong_password])
	end

	def touch_login_page
		find_element(id: @login_page).click
	end

	def touch_sign_in_button
		find_element(id: @sign_in_button).click
		sleep(5)
	end

	def cancel_login
		find_element(id: @cancel_button).click
	end

	def back_page
		find_element(class: @back_button).click
	end

	def check_login_error
		find_element(id: @login_error).displayed?
	end

end
