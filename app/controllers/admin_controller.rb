class AdminController < ApplicationController
    layout 'dashboard'
    def index
        
    end

    def products
        @products = Product.all
    end

    def calon_customers
        @calons = Customer.joins('join status_customer on status_customer.id_status = customers.id_status')
            .where(customers: {id_status: 1})
            .select('nama_customer, no_hp, status, id_customers')
    end

    def customers
        @customers = Customer.joins('join status_customer on status_customer.id_status = customers.id_status',
            'join products on products.id_product = customers.id_product')
            .select('nama_customer, no_hp, nama_product, status')
            .where('customers.id_status != 1')
        @calons = Customer.where(customers: {id_status: 1})
        @products = Product.all
    end
end
