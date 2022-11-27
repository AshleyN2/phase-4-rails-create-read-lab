Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # GET /plants
    #get '/plants', to:'plants#index'
  resources :plants, only:[:index, :show, :create]

   # GET /plants/:id
  #get ''

  
end
