Rails.application.routes.draw do

  resources :species do
      resources :sightings
    end
  #resources :sightings
end
