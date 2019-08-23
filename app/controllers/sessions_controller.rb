class SessionsController < ApplicationController
    skip_before_action :authorized, except: :destroy

    def new 
        render :new
    end

    def create
        # params {username: 'me', password: '1234'}
        # find user by the username found in params from the login form
        @user = User.find_by({ name: params[:username] })
    
        # attempt to authenticate the user by username
        if !!@user && @user.authenticate(params[:password])
          flash[:notice] = "Successfully logged in #{@user.name}!"
          # store the logged in user somewhere
          session[:user_id] = @user.id
          redirect_to profile_path
        else
          flash[:notice] = "Invalid username or password"
          redirect_to login_path
        end
    end
    
    def destroy
        session.delete(:user_id)
        flash[:notice] = "Successfully logged out #{@user.name}!"
        redirect_to login_path
    end
end