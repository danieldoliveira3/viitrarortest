Rails.application.routes.draw do
  
  resources :marcas do
    resources :carros, only: [:create]

    get "/carros", to: "marcas#carros_por_marca"
  end

  resources :carros, only: [:index, :update, :show, :destroy]

  resources :users

  root 'marcas#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
