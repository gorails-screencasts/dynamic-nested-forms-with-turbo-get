Rails.application.routes.draw do
  root "projects#index"

  resources :tasks, only: [:new, :destroy]
  resources :projects
end
