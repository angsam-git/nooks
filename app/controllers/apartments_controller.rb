class ApartmentsController < ApplicationController

  def index
    @group = Group.find params[:group_id]
    @apartments = @group.apartments
  end


  def create
    @group = Group.find params[:group_id]
    @apartment = Apartment.create(apartment_params)
    redirect_to group_apartments_path(@group)
  end

  private
  # Making "internal" methods private is not required, but is a common practice.
  # This helps make clear which methods respond to requests, and which ones do not.
  def apartment_params
    params.require(:apartment).permit(:address, :mo_rent, :num_beds, :num_baths, :sq_ft, :url, :group_id)
  end
end
