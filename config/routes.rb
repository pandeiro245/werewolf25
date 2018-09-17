Rails.application.routes.draw do
  resources :rooms, only: [:show]
  resources :comments, only: [:create]
  resources :workloads, only: [:new, :edit, :create, :update]
  root 'welcome#index'
  get '/auth/:provider/callback', to: 'welcome#callback'
end
