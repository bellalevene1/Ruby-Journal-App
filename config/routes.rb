Rails.application.routes.draw do
  get "map/index"
  resources :dream_destinations
  root 'entries#index'
  resources :entries  
  get "map", to: "map#index"


  
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
