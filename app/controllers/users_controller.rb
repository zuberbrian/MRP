class UsersController < ApplicationController
    before_action :require_login, except: [:login]
    before_action :logged_in, only: [:login]
    layout "login", only: [:login]
    def login
    end
    def process_login
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:id] = user.id
            redirect_to "/dashboard"
        else
            flash[:errors] = ["Invalid login credentials."]
            redirect_to :back
        end
    end
    def destroy
        reset_session
        redirect_to "/"
    end
    def dashboard
        @user = User.find(1).name
    end
private
    def require_login
        redirect_to '/' if session[:id] == nil
    end
    def logged_in
        redirect_to '/dashboard' if session[:id] != nil
    end
end
