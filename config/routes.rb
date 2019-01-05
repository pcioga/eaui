Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get '/home/instructions', to: 'home#instructions'
  get '/home/final', to: 'home#final'

  devise_scope :user do
    authenticated :user do
      root 'exercises#video3'
    end

    unauthenticated do
      root 'home#index'
    end
  end

  resources :survey
  get 'new', action: :new, controller: 'surveys'
  post 'create', action: :create, controller: 'surveys'
  resources :exercises
  get 'video1', action: :video1, controller: 'exercises'
  get 'video2', action: :video2, controller: 'exercises'
  get 'video3', action: :video3, controller: 'exercises'
  get 'video4', action: :video4, controller: 'exercises'
  get 'exercise1', action: :exercise1, controller: 'exercises'
  get 'exercise2', action: :exercise2, controller: 'exercises'
  get 'exercise3', action: :exercise3, controller: 'exercises'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


