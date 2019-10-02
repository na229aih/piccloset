Rails.application.routes.draw do

  devise_for :users

  root 'items#index'

  resources :items ,only: [:new, :create, :show] do
    resources :comments, only: [:create]
  end

  resources :users ,only: [:show]

  post '/like/:item_id' => 'likes#create'
  delete '/like/:item_id' => 'likes#delete'

end
