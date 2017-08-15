Rails.application.routes.draw do
  get 'panel/index'

  resources :binnacles
  resources :farming_students
  resources :farmings
  devise_for :users

  authenticated :user do
    root 'panel#index', as: :authenticated_root
  end

    root "devise/sessions#new"

end
