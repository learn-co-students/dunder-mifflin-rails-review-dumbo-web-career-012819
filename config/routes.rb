Rails.application.routes.draw do
    get '/dogs/sort', to: "dogs#sort"
    get '/dogs/:id', to: "dogs#show", as: "dog"

  resources :dogs, only: [:index]
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
