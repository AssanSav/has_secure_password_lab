class UsersController < ApplicationController

    def new # signup form
        @user = User.new 
    end

    def create # New user creation 
        @user = User.new(user_params)
        if @user.valid? && @user.save  
            session[:user_id] = @user.id
            redirect_to welcome_homepage_path
        else
            redirect_to new_user_path
        end
    end

    def destroy 
        session[:user_id] = nil
        redirect_to login_path 
    end 

    private 

    def user_params 
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

end
