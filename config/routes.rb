Rails.application.routes.draw do
  resources :categories

  resources :projects do
    resources :notes
    resources :goals do
      post "complete"
    end
    resources :tasks
  end

  root 'projects#index'
end
