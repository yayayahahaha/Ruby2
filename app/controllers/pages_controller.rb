class PagesController < ApplicationController
	# to make all views in this controller has the same layout: 
	# layout 'layout_name'
	# if we didn't setting which layout will render,
	# it will redner application.html.erb

    def home
    	# to make one method has layout:
    	# render layout: 'layout_name'
    end

    def about
        @name = "#{params[:first_name]} #{params[:last_name]}"
        # render layout: 'admin'
    end

    def math
        @numbers = (1..46).to_a.sample(6)
    end
end
