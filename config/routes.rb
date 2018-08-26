Rails.application.routes.draw do
  resources :inscricoes
  resources :campeonatos do
    resources :etapas
  end
  resources :categorias
  resources :tipo_categorias
  resources :atletas
    root to: 'home#index'
    resources :posts do
      resources :file_uploads, only: [:new, :create, :destroy]
    end
end