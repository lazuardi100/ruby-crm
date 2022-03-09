class ManagerController < ApplicationController
    layout 'dashboard'
    def approval
        @customers = Customer.joins('join products on products.id_product = customers.id_product')
            .where(customers: {id_status: 2})
            .select('customers.*, products.*')
    end
end
