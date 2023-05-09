Rails.application.routes.draw do
  get 'dogs/index'
  get 'dogs/show'
  get 'dogs/new'
  get 'dogs/edit'
  get 'home/index'
  get 'home/about'
  resources :dogs

  # get "/articles", to: "articles#index"
  # get "/products", to: "products#products"
  # # get "/product/:id", to: "products#show"
  # get '/all_products', to: 'products#get_all_products'

  # # get '/products/new', to: 'products#new'

  # post '/products/new', to: 'products#create'
  # put '/products/:id/edit', to: 'products#edit', as: 'edit_product'
  # delete '/products/:id', to: 'products#destroy', as: :delete_product


  # resources :products

end
