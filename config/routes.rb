Rails.application.routes.draw do
  root 'welcome#index'
  get '/auth/:provider/callback', to: 'welcome#callback'
end
