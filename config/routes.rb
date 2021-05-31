Rails.application.routes.draw do
  get 'accounts/index'
  root 'accounts#index'

  get '/open-account' => 'accounts#open_account'
  get '/deposit-amount' => 'accounts#deposit'
  get '/withdraw-amount' => 'accounts#withdraw'

  post '/withdraw_amount' => 'accounts#withdraw_amount'

  post '/deposit_amount' => 'accounts#deposit_amount'


  get '/details' => 'accounts#details'

  post '/create-account' => 'accounts#create_account'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
