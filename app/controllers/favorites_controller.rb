class FavoritesController < ApplicationController

    def create
        @favorite = current_user.favorites.build(:favoritee_id => params[:favoritee_id])
        redirect_to user_path
    end

    def destroy
        @favorite = current_user.favorites.find(params[:id])
        @favorite.destroy
        redirect_to user_path
    end
end 