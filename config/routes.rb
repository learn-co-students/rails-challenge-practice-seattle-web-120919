Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :companies, only: [:index, :show, :new, :create, :edit, :update]
  resources :buildings, only: [:index, :show, :new, :create, :edit, :update]
  resources :offices, only: [:show]
  resources :employees, only: [:show]
end
