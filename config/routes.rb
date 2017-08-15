Rails.application.routes.draw do
  get 'panel/index'

  resources :binnacles
  resources :farming_students
  resources :farmings
  devise_for :users


  authenticated :user do
    devise_scope :user do
      root to: "panel#index", :as => "authenticated"
    end
  end

  unauthenticated do
    devise_scope :user do
      root to: "devise/sessions#new", :as => "unauthenticated"
    end
  end

end
