Rails.application.routes.draw do
  resources :autos
  resources :concesionaria, except: :show
  delete '/products/:id', to: 'products#destroy'
  post '/products', to: 'products#create'
  get '/products/new', to: 'products#new', as: :new_carro #formulario agregar
  get '/products', to: 'products#index' #obtencion del index
  get '/products/:id', to: 'products#show', as: :carroo #Mostrar los productos epor separado
 
  namespace :authentication, path: '', as: '' do
    resources :users, only: [:new, :create] #Validacion usuario
    resources :sessions, only: [:new, :create] #Validacion SESSION
  end
end
