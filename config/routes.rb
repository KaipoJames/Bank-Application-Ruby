Rails.application.routes.draw do
  resources :accounts
  
  root to: 'home#index'
  get "about" => 'home#about'
  get "contact" => 'home#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
