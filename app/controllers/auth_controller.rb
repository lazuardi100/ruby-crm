class AuthController < ApplicationController
    def index
        @greet = 'hello world'
    end

    def api 
        render json: 'helloooo'
    end
end
