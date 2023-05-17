Rails.application.routes.draw do
  root 'operacoes#index'
  
  resources :operacoes, only: [:index, :new, :create] do
    collection do
      post 'importar', action: :importar, as: 'importar'
      get 'importar', action: :new, as: 'new_importar'
    end
  end
end