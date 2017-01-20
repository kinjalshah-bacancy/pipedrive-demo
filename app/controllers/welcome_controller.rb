class WelcomeController < ApplicationController

  def index
  	@allDeals = Pipedrive::getAllDeal
  	# exit
  	# render json: @allDeals
  end
end
