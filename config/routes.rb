# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'feeds#index'
  resources :contacts, only: %i[new create show]
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
      post :new_guest, as: 'guest_sign_in'
    end
    resources :comments
  end
  mount LetterOpenerWeb::Engine, at: '/letter_opener'
end
