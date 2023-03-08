Rails.application.routes.draw do
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # TODO: refactor >>> resources :restaurants, only: [:index]

  resources :restaurants do
    resources :reviews, only: %i[new create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
