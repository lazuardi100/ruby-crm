require 'bcrypt'
class AuthController < ApplicationController
    def index
        @greet = 'hello world'
    end

    def api 
        render json: 'helloooo'
    end

    def login
    end

    def logining
        
        currPass = params[:password]
        akun = Account.where(email: params[:email]).first.as_json
        
        if  !(akun.nil?)
            session.clear
            flash[:danger] = 'Akun tidak ditemukan'
            
            isNill = true
            
        end
        
        BCrypt::Engine.cost = 12
        
        

        if BCrypt::Password.new(akun['pass']) == currPass
            session[:user_id] = akun['id_account']
            session[:email] = akun['email']
            session[:role] = akun['id_role']

            redirect_to admin_products_path
        else
            session.clear
            flash[:danger] = 'Akun tidak ditemukan'
        end
        
    end

    def logout
        session.clear

        redirect_to root_path
    end
end
