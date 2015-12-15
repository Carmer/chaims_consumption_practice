Rails.application.routes.draw do
  resources :songs
  resources :albums
  resources :artists

  get "/complete_info/:id", to: "songs#complete_info"
end
