Rails.application.routes.draw do
  resources :categorias
  resources :tipo_categorias
  resources :atletas
    root to: 'home#index'
    resources :posts do
      resources :file_uploads, only: [:new, :create, :destroy]
    end
end