class StatesController < ApplicationController
  respond_to :json

  def index
    country = Country.find(params[:country_id])
    respond_with(country.states) if stale?(country)
  end
end
