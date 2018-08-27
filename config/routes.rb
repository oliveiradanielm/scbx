Rails.application.routes.draw do
  resources :baterias do
    resources :bateria_detalhes, as: :detalhes
  end
  resources :campeonato_detalhes
  resources :tipo_baterias
  resources :inscricoes
  post '/inscricoes/confirmar_inscricao', as: :confirmar_inscricao
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