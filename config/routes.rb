Rails.application.routes.draw do
  # root to: "pages#home"
  resources :lists, only: [:index, :show]
end
