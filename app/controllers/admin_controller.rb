class AdminController < ApplicationController
    layout 'dashboard'
    def index
        
    end

    def products
        @products = Product.all
    end

    def calon_customers
        @calons = Customer.joins('join status_customer on status_customer.id_status = status_customer.id_status')
            .where(customers: {id_status: 1})
            .select('nama_customer, no_hp, status, id_customers')
        
        # binding.pry
        
    end
end
