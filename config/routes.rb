Rails.application.routes.draw do
  resources :titiata
  devise_for :users, controllers:{registrations:'registrations'}	
  root 'titiatum#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
