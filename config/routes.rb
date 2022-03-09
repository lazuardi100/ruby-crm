Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "auth#login"
  get 'auth/index'
  get 'auth/api'
  get 'admin/index'
  get 'auth/logout'
  get 'admin/products'

  post 'auth/logining', to: 'auth#logining'
  post 'product/add', to: 'products#add'
end
