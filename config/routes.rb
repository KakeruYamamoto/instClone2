Rails.application.routes.draw do
  root to: 'sessions#new'
  resources :favorites, only: [:create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :feeds do
    collection do
      post :confirm
    end
  end
end
