module NavbarHelper
	def nav_li text, path
		class_name = request.path == path ? :class_name : nil
		content_tag :li, link_to(text, path), class: class_name
	end
end
