Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'teas/featured', to: 'tea#featured'
  get 'tea/:id', to: 'tea#show'
  get 'teas/', to: 'tea#index'
  # resources :tea, :path => "teas", 
end
