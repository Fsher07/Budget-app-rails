Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  authenticated :user do
    root to: 'home#index'
  end
  unauthenticated :user do
    root to: "splashs#index", as: :unauthenticated_root
  end
end
