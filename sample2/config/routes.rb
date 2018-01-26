Rails.application.routes.draw do
  root to: 'main#main'
  get '/main' => 'main#main'
  get '/sub' => 'sub#sub'
  get '/main2' => 'create#index'
end
