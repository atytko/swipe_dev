Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only:[:index, :show,:edit,:update]
  resources :filters
  resources :matches, only: [:index,:show]

  resources :offers do
    resources :swipes
  end

  get '/swipes', to: 'swipes#index'
  resources :settings

  resources :chat_rooms, only: [ :show, :index ] do
    resources :messages, only: [ :create ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
