Rails.application.routes.draw do
  devise_for :users
    resources :tweets do
      collection do
        get :map
        end
      resources :likes, only: [:create, :destroy]
      end
      
    resources :users, only: [:show]
    resources :preparations
    root'tweets#top'
end
