class PagesController < ApplicationController
  def home
  end

  def about
  	@name = "#{params[:first_name]} #{params[:last_name]}"
  end

  def math
  	@numbers = (1..46).to_a.sample(6)
  end
end
