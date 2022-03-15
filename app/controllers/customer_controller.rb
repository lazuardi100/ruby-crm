class CustomerController < ApplicationController
    def add
        customers = Customer.new(nama_customer: params[:nama_customer], 
            no_hp: params[:no_hp],
            id_status: 1);
        
        if customers.save
            flash[:success] = 'Calon konsumen '+params[:nama_customer]+' berhasil ditambahkan'
        else
            flash[:danger] = customers.errors.full_messages
        end

        redirect_to admin_calon_customers_path
    end

    def delete
        Customer.destroy_by(id_customer: params[:id])

        flash[:success] = 'Customer berhasil dihapus'
        redirect_to admin_calon_customers_path
    end

    def to_pending
        customer = Customer.find_by(id_customer: params[:calon_customer])
        customer.id_product = params[:produk]
        customer.id_status = 2
        customer.save

        flash[:success] = 'Customer berhasil ditambahkan'
        redirect_to admin_customers_path
    end

    def approved
        customer = Customer.find_by(id_customer: params[:id])
        customer.id_status = 3
        customer.save

        redirect_to manager_approval_path
    end

    def rejected
        customer = Customer.find_by(id_customer: params[:id])
        customer.id_status = 4
        customer.save

        redirect_to manager_approval_path
    end
end
