Rails.application.routes.draw do
  get 'users/show'
  root to: 'homes#top'
  devise_for :users
  resources :movies, only: [:new, :create, :index, :show, :destroy]do
    resource :favorites, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
end
