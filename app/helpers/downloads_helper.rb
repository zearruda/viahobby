module DownloadsHelper
   def is_active?(page_name)
  	"active" if params[:controller] == page_name
	end
end
