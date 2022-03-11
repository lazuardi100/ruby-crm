class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    def after_sign_in_path_for(resource)
        if current_user.role == 1
            admin_products_path
        elsif current_user.role == 2
            manager_approval_path
        end
    end
end
