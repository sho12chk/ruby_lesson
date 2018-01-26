Rails.application.routes.draw do
  root to: 'main#main'
  get '/main' => 'main#main'
  get '/sample' => 'main#sample'
end
