    class CampeonatosController < ApplicationController
    before_action :set_campeonato, only: [:show, :edit, :update, :destroy]
  
    # GET /campeonatos
    def index
      @campeonatos = Campeonato.all
    end
  
    # GET /campeonatos/1
    def show
    end
  
    # GET /campeonatos/new
    def new
      @campeonato = Campeonato.new
    end
  
    # GET /campeonatos/1/edit
    def edit
    end
  
    # POST /campeonatos
    def create
      @campeonato = Campeonato.new(campeonato_params)
  
      if @campeonato.save
        redirect_to @campeonato, notice: t('flash.create.notice')
      else
        render :new
      end
    end
  
    # PATCH/PUT /campeonatos/1
    def update
      if @campeonato.update(campeonato_params)
        redirect_to @campeonato, notice: t('flash.update.notice')
      else
        render :edit
      end
    end
  
    # DELETE /campeonatos/1
    def destroy
      @campeonato.destroy
      redirect_to campeonatos_url, notice: t('flash.destroy.notice')
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_campeonato
        @campeonato = Campeonato.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def campeonato_params
        params.require(:campeonato).permit(:titulo, :descricao, :qtd_etapa)
      end
  end
  