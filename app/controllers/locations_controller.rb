class LocationsController < ApplicationController
  
  private

  def location_params
    params.require(:location).permit(:name, :address, :city, :state, :zip, :phone, :url)
  end
end
