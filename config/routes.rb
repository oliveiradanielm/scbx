Rails.application.routes.draw do
  resources :baterias do
    collection do
      post 'new_fase'
    end
    resources :bateria_detalhes, as: :detalhes do
    end
  end
  post 'set_resultado' => 'bateria_detalhes#set_resultado'
  resources :campeonato_detalhes
  resources :tipo_baterias
  resources :inscricoes
  post '/inscricoes/confirmar_inscricao', as: :confirmar_inscricao
  get 'get_atleta' => 'inscricoes#get_atleta'
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