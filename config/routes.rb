Rails.application.routes.draw do
  get '/welcome' => 'pages#welcome'
  get '/' => 'pages#welcome'
  get '/about' => 'pages#about'
  get '/contest' => 'pages#contest'
  get '/kitten' => 'pages#kitten'
  get '/kitten/:size' => 'pages#kitten'
  get '/secrets/:magic_word' => 'pages#secrets'
  # get '/kitten/:size1/:size2' => 'pages#kitten'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
