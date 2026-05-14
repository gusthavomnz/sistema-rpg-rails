Rails.application.routes.draw do
  resources :personagem_missaos
  resources :missaos
  resources :items
  resources :ficha_de_statuses
  resources :inventarios
  resources :magos
  resources :guerreiros
  resources :personagems
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
