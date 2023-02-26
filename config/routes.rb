Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :movies do
    collection do
      get :list
    end
  end
  resources :lists, only: [:new]
   end
  # Defines the root path route ("/")
  # root "articles#index"

end
