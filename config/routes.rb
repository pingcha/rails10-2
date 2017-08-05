Rails.application.routes.draw do
  devise_for :users
  resources :groups do
    member do
      post :join
      post :quit
    end

    resources :posts
  end

  namespace :account do
    resources :groups
    resources :posts
    resources :users do
      resource :profile, :controller => "user_profiles"
    end

  end

  root 'welcome#index'

    resource :user

    get "/faq" => "pages#faq"
end
