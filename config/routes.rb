Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations", unlocks: "users/unlocks", passwords: "users/passwords", confirmations: "users/confirmations" }, path_names: {sign_in: "login", sign_out: "logout"}
  as :user do
    get "/login" => "users/sessions#new"
    post "/login" => "users/sessions#create"
    delete "/logout" => "users/sessions#destroy"
  end
  resources :baterias do
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