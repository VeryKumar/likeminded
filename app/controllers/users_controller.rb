class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create, :show]
    # before_action :find_user, only: [:show]

    def index
        @users = User.all 
    end

    def show
        @user = User.find(params[:id])
        render :show
    end

    def profile
        @current_user = User.find(session[:user_id])
        render :show
    end

    def new
        @user = User.new
        render :new
    end
    
    def create
        @user = User.create(user_params)
        if @user.valid?
            flash[:notice] = "Sign-up was Successful! Welcome, to Like-Minded #{@user.name}"
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else 
          flash[:errors] = @user.errors.full_messages
          redirect_to new_user_path
        end
    end
    
    def edit
        @user = User.find(params[:id])
    end
    
    def update
        @user = User.find(params[:id])
        
        if @user.update(user_params)
            flash[:notice] = "Successfully updated your profile!"
          redirect_to user_path(@user)
        else
          flash[:errors] = @user.error.full_messages
          redirect_to edit_user_path(@user)
        end
    end
    
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        flash[:notice] = "Deleted account for #{user.name}"
    
        redirect_to new_user_path
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :bio, :picture)
    end
end