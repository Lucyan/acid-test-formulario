Rails.application.routes.draw do
  
  root 'formulario#index'
  post 'respuesta', to: 'formulario#respuesta'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
