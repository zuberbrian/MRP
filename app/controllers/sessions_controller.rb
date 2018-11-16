class SessionsController < ApplicationController
    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:id] = user.id
            redirect_to "/dashboard"
        else
            flash[:errors] = ["Invalid login credentials"]
            redirect_to :back
        end
    end
    def destroy
        reset_session
        redirect_to "/"
    end
end
