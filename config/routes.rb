Rails.application.routes.draw do
  resources :workloads, only: [:new, :edit, :create]
  root 'welcome#index'
  get '/auth/:provider/callback', to: 'welcome#callback'
end
