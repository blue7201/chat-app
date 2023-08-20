Rails.application.routes.draw do
  #なぜか残っているルーティング get 'messages/index'
  root to: "messages#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
  #検証
  devise_for :users
end
