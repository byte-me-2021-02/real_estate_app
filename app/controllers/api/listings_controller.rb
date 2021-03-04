class Api::ListingsController < ApplicationController
  def create
    @listing = Listing.new(
      description: params[:description],
      year_built: params[:year_built],
      square_feet: params[:square_feet],
      bedrooms: params[:bedrooms],
      bathrooms: params[:bathrooms],
      floors: params[:floors],
      availability: params[:availability],
      address: params[:address],
    )
    @listing.save
    render 'show.json.jb'
  end
end
