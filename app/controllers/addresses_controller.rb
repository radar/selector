class AddressesController < ApplicationController

  def index
    @addresses = Address.all
  end

  def new
    @address = Address.new
    collect_form_data
  end

  def create
    @address = Address.create(address_params)
    flash[:notice] = "Address has been created"
    redirect_to addresses_path
  end

  def edit
    find_address
    collect_form_data
  end

  def update
    find_address
    @address.update_attributes(address_params)
    flash[:notice] = "Address has been updated"
    redirect_to addresses_path
  end

  def destroy
    find_address
    @address.destroy
    flash[:notice] = "Address has been destroyed"
    redirect_to addresses_path
  end

  private

  def collect_form_data
    @countries = Country.order("name ASC")
    if @address && @address.country
      @states = @address.country.states
    else
      @states = @countries.first.states
    end
  end

  def find_address
    @address ||= Address.find(params[:id])
  end

  def address_params
    params.require(:address).permit!
  end
end
