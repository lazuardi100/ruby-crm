class CustomerController < ApplicationController
    def add
        customers = Customer.new(nama_customer: params[:nama_customer], 
            no_hp: params[:no_hp],
            id_status: 1);
        
        if customers.save
            flash[:success] = 'Produk '+params[:nama_customer]+' berhasil ditambahkan'
        else
            flash[:danger] = 'Produk '+params[:nama_customer]+' gagal ditambakan'
        end

        redirect_to admin_calon_customers_path
    end

    def delete
        Customer.destroy_by(id_customers: params[:id])

        flash[:success] = 'Customer berhasil dihapus'
        redirect_to admin_calon_customers_path
    end

    def to_pending
        customer = Customer.find_by(id_customers: params[:calon_customer])
        customer.id_product = params[:produk]
        customer.id_status = 2
        customer.save

        flash[:success] = 'Customer berhasil ditambahkan'
        redirect_to admin_cutomers_path
    end
end
