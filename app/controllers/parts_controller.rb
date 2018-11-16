class PartsController < ApplicationController
    before_action :require_login, except: [:login]
    def index
        @parts = Part.all
        @suppliers = Supplier.all
    end
    def create
        part = Part.new(name: params[:name], number: params[:part_number], price: params[:price], lead_time: params[:lead_time], Supplier: Supplier.find(params[:supplier]), notes: params[:notes])
        if part.valid?
            part.save
            redirect_to "/Parts"
        else
            flash[:errors] = part.errors.full_messages
            redirect_to :back
        end
    end
    def show
        @part = Part.find(params[:id])
        @parts = Part.find(params[:id])
    end
private
    def require_login
        redirect_to '/' if session[:id] == nil
    end
    def logged_in
        redirect_to '/dashboard' if session[:id] != nil
    end
end
