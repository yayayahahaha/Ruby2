class PagesController < ApplicationController
  def home
  end

  def about
  end

  def math
  	@numbers = (1..46).to_a.sample(6)
  end
end
