class SessionsController < ApplicationController
    def new
    end

    def create
        if !params[:name] || params[:name].blank?
            redirect_to '/'
        else
            session[:name] = params[:name]
            redirect_to '/user'
        end
    end

    def destroy
        session.delete :name
        redirect_to '/login'
    end
end
