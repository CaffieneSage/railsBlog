Rails.application.routes.draw do
  root "articles#index"

  get "about", to: "articles#about"

  resources :articles do
    resources :comments
  end
end

