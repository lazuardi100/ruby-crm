class ProductsController < ApplicationController
    def add
        product = Product.new(nama_product: params[:nama_produk], harga: params[:harga])

        if product.save
            flash[:success] = 'Produk '+params[:nama_produk]+' berhasil ditambahkan'

        else
            flash[:danger] = 'Produk '+params[:nama_produk]+' gagal ditambakan'
        end
        redirect_to admin_products_path
    end
end
