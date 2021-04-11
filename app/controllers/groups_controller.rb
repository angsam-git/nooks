class GroupsController < ApplicationController
    def show
        @group = Group.find params[:id]
        redirect_to group_apartments_path(@group)
    end
  
    def index
      redirect_to root_path
    end
  
    def new
      # default: render 'new' template
    end
  
    def create
      @group = Group.create!(group_params)
      redirect_to groups_path
    end
  
    def edit
      @group = Group.find params[:id]
    end
  
    def update
      @group = Group.find params[:id]
      @group.update_attributes!(group_params)
      redirect_to group_path(@group)
    end
  
    def destroy
      @group = Group.find(params[:id])
      @group.destroy
      redirect_to groups_path
    end
  
    private
    # Making "internal" methods private is not required, but is a common practice.
    # This helps make clear which methods respond to requests, and which ones do not.
    def group_params
      params.require(:group).permit(:name)
    end
end
