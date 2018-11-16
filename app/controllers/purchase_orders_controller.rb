class PurchaseOrdersController < ApplicationController
    before_action :require_login, except: [:login]
    def index
        @pos = PurchaseOrder.all
    end
private
    def require_login
        redirect_to '/' if session[:id] == nil
    end
    def logged_in
        redirect_to '/dashboard' if session[:id] != nil
    end
end
