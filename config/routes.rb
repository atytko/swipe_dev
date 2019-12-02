Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
                   controllers: {omniauth_callbacks: "omniauth_callbacks"}
  root to: 'pages#home'

  resources :users, only: [:index,:show,:edit,:update]
  resources :filters

  resources :offers do
    resources :swipes
  end

  get '/swipes', to: 'swipes#index'
  resources :settings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
