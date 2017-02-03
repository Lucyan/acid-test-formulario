Rails.application.routes.draw do
  
  root 'forms#index'
  post 'respuesta', to: 'forms#respuesta'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
