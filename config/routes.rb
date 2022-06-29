Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  root "articles#index"

  get "about", to: "articles#about"

  resources :articles do
    resources :comments
  end
end

