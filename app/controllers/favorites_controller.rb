class FavoritesController < ApplicationController

    def create
        # @favorite = current_user.favoritees.build(:favoritee_id => params[:favoritee_id])
        current_user.favorited_users << User.find(params[:favoritee_id])
        redirect_to user_path current_user
    end

    def destroy
        @favorite = current_user.favorites.find_by(favoritee_id: params[:favoritee_id])
        @favorite.destroy
        redirect_to user_path current_user
    end
end 