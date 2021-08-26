Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'
  
  namespace :api, defaults: {format: :json} do 
    resource :users, only: [:create, :update]
    resources :profiles,only: [:create,:update,:destroy,:index]
    resource :session, only: [:create, :destroy] 
    resource :profile_session, only: :create
    resources :videos, only: [:index,:show]
    resources :lists, only: [:create, :destroy, :index, :show]
    resources :genres, only: :index
  end
end
