Rails.application.routes.draw do

  devise_for :users

  #get 'users/show/:id', to: 'users#show', as: 'users_show'
  resources :users, only: [:show] do
    resources :items, only: [:create, :destroy]
  end

  get 'welcome/index'

  root 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
