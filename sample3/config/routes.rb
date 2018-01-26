Rails.application.routes.draw do
  get '/top' => 'main#index'
  get '/delete' => 'main#delete'
end
