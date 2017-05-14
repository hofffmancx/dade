Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :products
    resources :messages
  end

  resources :products
  resources :messages

  root "welcome#index"
end
