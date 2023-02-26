Rails.application.routes.draw do
  get 'movies/title:string'
  get 'movies/overview:text'
  get 'movies/poster_url:string'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists
  resources :lists, only:[:new, :create]
  # Defines the root path route ("/")
  # root "articles#index"
  resources :name, only: [:destroy]

end
