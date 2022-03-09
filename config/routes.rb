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

  post 'auth/logining', to: 'auth#logining'
  post 'product/add', to: 'products#add'
  post 'customer/add', to: 'customer#add'
end
