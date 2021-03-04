class Api::ListingsController < ApplicationController
  def create
    # take the address
    p params[:address]
    # put that into geocoder
    results = Geocoder.search(params[:address])
    p results.first.coordinates
    # get the results back
    # add that to that lat/lng attribute in the model
    
    
    @listing = Listing.new(
      description: params[:description],
      year_built: params[:year_built],
      square_feet: params[:square_feet],
      bedrooms: params[:bedrooms],
      bathrooms: params[:bathrooms],
      floors: params[:floors],
      availability: params[:availability],
      address: params[:address],
      latitude: results.first.coordinates[0],
      longitude: results.first.coordinates[1],
    )
    @listing.save
    render 'show.json.jb'
  end
end
