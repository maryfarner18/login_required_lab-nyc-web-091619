class SessionsController < ApplicationController

    def new
    end

    def create
        name = params[:name]
        if !name || name == ""
            redirect_to '/login'
        else
            session[:name] = name
            redirect_to '/'
        end
    end

    def destroy
        session.delete :name
        redirect_to '/'
    end

end