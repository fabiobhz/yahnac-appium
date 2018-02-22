#coding: utf-8

class FirstHomeScreen
	def initialize
		@menu_icon = 'android.widget.ImageButton'
		@login_page = 'view_drawer_header_login'
		@welcome_message = 'view_drawer_header_username'
	end

	def click_menu_icon
		find_element(class: @menu_icon).click
	end

	def touch_login_page
		find_element(id: @login_page).click
	end

	def check_welcome_message
		find_element(id: @welcome_message).displayed?
	end
end

