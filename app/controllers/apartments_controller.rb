class ApartmentsController < ApplicationController
  def show
  end

  def index
    @group = Group.find params[:group_id]
    @apartments = @group.apartments
  end

  def new
    # default: render 'new' template
  end

  def create
    puts "hello"
    puts apartment_params
    @group = Group.find params[:group_id]
    @apartment = Apartment.create(apartment_params)
    redirect_to group_apartments_path(@group)
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
    params.require(:apartment).permit(:address, :mo_rent, :num_beds, :num_baths, :sq_ft, :url, :group_id)
  end
end
