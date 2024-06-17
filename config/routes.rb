Rails.application.routes.draw do
  resources :delivery_points
  resources :commitment_points
  resources :work_in_progress_limits
  resources :visual_signals
  resources :columns do
    resources :visual_signals, only: [:create]
  end
  resources :boards do
    resources :columns, only: [:create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "boards#index"
end
