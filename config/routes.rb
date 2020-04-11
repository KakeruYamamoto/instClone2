# frozen_string_literal: true

Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  resources :contacts
  root to: 'sessions#new'
  resources :favorites, only: %i[new create destroy]
  resources :sessions, only: %i[new create destroy]
  resources :users do
    collection do
      get :favorite
    end
  end

  resources :feeds do
    collection do
      post :confirm
    end
    resources :comments
  end
end
