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
        
        binding.pry
        
        respond_to do |format|
            format.json { render action:'show', status: 'ok' }
        end
    end
end
