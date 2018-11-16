class SalesOrdersController < ApplicationController
    before_action :require_login, except: [:login]
    def index
        @sos = SalesOrder.all
        @suppliers = Supplier.all
        @customers = Customer.all
    end
    def create
        sos = SalesOrder.new(number: params[:number], description: params[:description], opened_date: params[:opened_date], due_date: params[:due_date], customer: Customer.find(params[:customer]))
        if sos.valid?
            sos.save
            redirect_to "/SalesOrders"
        else
            flash[:errors] = part.errors.full_messages
            redirect_to :back
        end
    end
    def show
        @so = SalesOrder.find(params[:id])
    end
private
    def require_login
        redirect_to '/' if session[:id] == nil
    end
    def logged_in
        redirect_to '/dashboard' if session[:id] != nil
    end
end
