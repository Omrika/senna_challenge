Rails.application.routes.draw do
  root "instagram#index"
  get "/users/search/:social_network/:username" => "instagram#search" 
end
