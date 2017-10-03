module ApplicationHelper
	def full_title(page_title = "")
		if page_title.empty?
			"Fakebook"
		else
		  page_title
		end
	end
end
