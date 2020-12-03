Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :spots, only: [:index, :show] do
    resources :seshs, only: [:create]
    resources :favorites, only: [:create, :destroy]
  end

  resource :profile, only: [:show ] do
    resources :seshs, only: [:update] do
      member {patch :update_rating}
    end
  end

end
