Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :spots, :only [:index, :show] do
    resources :sessions, :only []
  end

  resources :spots, :only [] do
    resources :favorites, :only []
  end

  resources :profile, :only [:show ]

end
