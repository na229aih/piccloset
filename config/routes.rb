Rails.application.routes.draw do

  devise_for :users

  root 'items#index'

  resources :items ,only: [:new, :create, :show] do
    resources :comments, only: [:create]
  end

  resources :users ,only: [:show]

  get '/users/:id/followings' => 'users#followings'
  get '/users/:id/followers' => 'users#followers'

  post '/like/:item_id' => 'likes#create'
  delete '/like/:item_id' => 'likes#destroy'

  resources :relationships, only: [:create, :destroy]

end
