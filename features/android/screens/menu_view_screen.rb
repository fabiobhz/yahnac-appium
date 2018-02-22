#coding: utf-8

class MenuViewScreen
	def initialize
		@menu_view = 'navigation_header_container'
	end

	def access_menu_view
		find_element(id: @menu_view).displayed?
	end

end