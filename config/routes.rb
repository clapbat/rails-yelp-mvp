Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'reviews/new'
  resources :restaurants do
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: %i[show edit update]
end
