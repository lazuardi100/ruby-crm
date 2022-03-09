class AdminController < ApplicationController
    layout 'dashboard'
    def index
        
    end

    def products
        @products = Product.all
    end
end
