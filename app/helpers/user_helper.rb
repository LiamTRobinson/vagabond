module UserHelper
	def redirect_unless_admin
  		if !current_user.is_admin?
  			redirect_to "/"
  		end
  	end
end
