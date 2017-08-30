Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/welcome'            => 'pages#welcome'
get '/contest'            => 'pages#contest'
get '/kitten/:size'       => 'pages#kitten', as: 'kitten'
get '/kittens/:size'      => 'pages#kittens', as: 'kittens'
get '/secret/:magic_word' => 'pages#secret', as: 'secret'
get '/secrets'            => 'pages#secrets'
root 'pages#welcome'

end
