Rails.application.routes.draw do
  root "instagram#index"
  get "/users/search/:username" => "instagram#search"
end
