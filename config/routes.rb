Rails.application.routes.draw do
  resources :locations
  resources :questions
  resources :choices
  resources :slangs

  get "shuffledWords", to: "slangs#shuffledWords"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
