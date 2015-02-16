class HomeController < ApplicationController
	def index
		@users = User.all
	end
	
	def show
	end

	def current_user_stats
		if user_signed_in? 
    		@user = current_user
		else
			@user = {:max_score=>'',:mean_score=>'',:attempt_count=>''}
		end
	end
end
