Rails.application.routes.draw do
  root 'entries#index'
  resources :entries  # Enables ALL standard routes (including show, edit, update)

  # Optional: Keep this stuff if you're using PWA features
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
