class SessionsController < ApplicationController
    
    def new
    end

    def create
        name = params[:name]
        if name && name.length > 0
            session[:name] = name
            redirect_to root_path
        else
            redirect_to login_path
        end
    end

    def destroy
        session.delete :name
        redirect_to login_path
    end

end