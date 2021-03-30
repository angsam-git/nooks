class ApartmentsController < ApplicationController
  def show
  end

  def index
    @group = Group.find params[:group_id]
    @apartments = Apartment.where(group_id: params[:group_id])
    # @apartments = Apartment.all
  end

  def new
    # default: render 'new' template
  end

  def create
    @apartment = Apartment.create!(apartment_params)
    redirect_to apartments_path
  end

  def edit
    @apartment = Apartment.find params[:id]
  end

  def update
    @apartment = Apartment.find params[:id]
    @apartment.update_attributes!(apartment_params)
    redirect_to apartment_path(@apartment)
  end

  def destroy
    @apartment = Apartment.find(params[:id])
    @apartment.destroy
    redirect_to apartments_path
  end

  private
  # Making "internal" methods private is not required, but is a common practice.
  # This helps make clear which methods respond to requests, and which ones do not.
  def apartment_params
    params.require(:apartment).permit(:address, :mo_rent, :num_beds, :num_baths, :sq_ft, :url)
  end
end
