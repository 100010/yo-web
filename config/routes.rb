Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  namespace :api, format: :json do
    namespace :v1 do
      resources :users
    end
  end
end
