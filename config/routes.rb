Rails.application.routes.draw do
  resources :instruments
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root to: 'store#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
