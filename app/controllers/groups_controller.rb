class GroupsController < ApplicationController

    def index
        @groups = Group.all 
    end

    def show
        @group = Group.find(params[:id])
        @users = User.all
    end

    private

    def group_params
        params.require(@group).permit(:name)
end