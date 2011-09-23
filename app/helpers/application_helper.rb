module ApplicationHelper
	
	# Declaring some variables. As it turns out, these may not be needed
	def about_path
	  return '/about'
	end
  
  def contact_path
    return '/contact'
  end
  
  def home_path
    return '/'
  end
  
  def help_path
    return '/help'
  end
  
  def sign_up_path
    return '/signup'
  end
  
  def users_path
    return '/users'
  end
  	
	# Deals with the title for a page to be honest, I have no clue how it works
	def title
		base_title = "ML-DS"
		if @title.nil?
			return base_title
		else
			return "#{base_title} | #{@title}"
		end
	end
	
	def pic_scroll
    outside_link = 'http://i299.photobucket.com/albums/mm281/foxnewsnetwork/largelogo-1.png'
    image_tag( outside_link , :alt => "Moonlight Dreamscape large logo", :class => "round" )
  end
  
  def logo
    outside_link = 'http://i299.photobucket.com/albums/mm281/foxnewsnetwork/logo.png'
    image_tag( outside_link, :alt => "Moonlight Dreamscape logo", :class => "round" )
  end
	
	# Ideally puts stuff into the <nav> tags on the application page
end
