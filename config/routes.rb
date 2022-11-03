Rails.application.routes.draw do
  root "projects#index"
  resources :projects do
    collection do
      get "task_field"
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
