Rails.application.routes.draw do
  resources :categories

  resources :projects do
    resources :notes
  end
  root 'projects#index'
end
