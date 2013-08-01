CookBook::Application.routes.draw do
  resources :books, :recipes, :ingredients, :users, :sessions, :comments 

  get '/signup' => 'users#new'

  match '/signout', to: 'sessions#destroy', via: :delete
  get'/signin' => 'sessions#new'

  root to: 'books#index'

  get '/data.json' => 'stats#data'
  get '/stats' => 'stats#stats' #left side name of controller (it's file direectory), right side method

  get '/comments/:book_id' => 'comments#new'

  post '/forget_passwords' => 'forget_passwords#send_email'
  get'/forgot_password' => 'forget_passwords#new'

  
end

