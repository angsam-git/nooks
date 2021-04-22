class GroupsController < ApplicationController
    def show
      # if Group.exists?(:name => params[:name])
      #   @group = Group.find_by_name params[:name]
      #   redirect_to group_apartments_path(@group)
      # else
      # end
      # @group = Group.find_by_name "Group 1"
      # redirect_to group_apartments_path(@group)
    end

    def search
      if Group.exists?(name: params[:group][:name])
        @group = Group.find_by_name params[:group][:name]
        params[:group][:id] = @group.id
        redirect_to group_apartments_path(@group)
      else
      end
   end
  
    def index
      # if params[:name]
      #   @group = Group.find_by_name params[:name]
      #   redirect_to group_apartments_path(@group)
      # end
      redirect_to root_path
    end
  
    def new
      # default: render 'new' template
    end
  
    def create
      if !Group.exists?(:name => params[:group][:name])
        @group = Group.create!(group_params)
        redirect_to group_apartments_path(@group)
      else
      end
      
    end

    private
    # Making "internal" methods private is not required, but is a common practice.
    # This helps make clear which methods respond to requests, and which ones do not.
    def group_params
      params.require(:group).permit(:name)
    end
end
