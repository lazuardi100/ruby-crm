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
end
