Rails.application.routes.draw do
  get '/main' => 'main#main'
  get '/main2' => 'main2#index'
  get '/main3' => 'main3#post'
end