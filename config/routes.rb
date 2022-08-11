Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  unauthenticated :user do
    root to: "splashs#index", as: :unauthenticated_root
  end

  root 'home#index'
  resources :categories
  resources :operations
end
