Rails.application.routes.draw do
  resources :statuses

  root to: 'statuses#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
