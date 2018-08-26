class HomeController < ApplicationController
  def index
    @etapas = Etapa.includes(:campeonato).order(:data)
  end
end
