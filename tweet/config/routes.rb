Rails.application.routes.draw do
  root to: "talk#index"
  get "/talk" => "talk#index"
  get "/talk/new" => "talk#new"
  post "/talk" => "talk#create"
end
