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

        BCrypt::Engine.cost = 12

        if BCrypt::Password.new(akun['pass']) == currPass
            isVerified = true
        else
            isVerified = false
        end

        
        # binding.pry
        
    end
end
