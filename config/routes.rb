Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "auth#login"
  get 'auth/index'
  get 'auth/api'
  get 'admin/index'
  get 'auth/logout'
  get 'admin/products'
  get 'admin/calon_customers'
  get 'customer/delete'
  get 'admin/customers'
  get 'manager/approval'
  get 'customer/approved'
  get 'customer/rejected'

  post 'auth/logining', to: 'auth#logining'
  post 'product/add', to: 'products#add'
  post 'customer/add', to: 'customer#add'
  post 'customer/to_pending', to: 'customer#to_pending'
end
