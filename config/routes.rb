Rails.application.routes.draw do
  # root to: "pages#home"
  resources :lists do
    resources :items, only: :create
  end
end
