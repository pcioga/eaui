Rails.application.routes.draw do
  devise_for :users
  
  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/registrations#new', as: :unauthenticated_root
    end
  end

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
