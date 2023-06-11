Rails.application.routes.draw do
  # root to: "pages#home"
  resources :lists, only: [:index, :show] do
    resources :items, only: :create
  end
end
