Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get 'sign_up', to: 'devise/registrations#new', as: :sign_up
    get 'sign_in', to: 'devise/sessions#new', as: :sign_in
    # get 'log_out', to: 'devise/sessions#destroy', as: :log_out
  end

  resources :statuses

  root to: 'statuses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
