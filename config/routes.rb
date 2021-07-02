Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks
  resources :tokens
  devise_for :users, controllers: { registrations: "registrations", sessions: 'users/sessions' }
end
