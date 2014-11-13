Rails.application.routes.draw do

  root "pages#index"
  resources :lists
  resources :tasks
  resources :items
end
