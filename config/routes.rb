Rails.application.routes.draw do
  resources :orders
  root "home#index"
  resources :carts
  resources :products do
    member do
      get 'add-to-cart' => "products#add_to_cart"
    end 
  end
  resources :users do
    collection do
      get 'cart', to: "users#cart"
    end
  end
  get 'login' => 'users#login'
  get 'signup' => 'users#signup'
  post 'create_account' => 'users#create_account'
  delete 'logout' => 'users#logout_user'
  post 'login_create' => 'users#login_create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
