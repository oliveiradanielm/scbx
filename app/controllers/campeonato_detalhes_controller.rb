    class CampeonatoDetalhesController < ApplicationController
    before_action :set_campeonato_detalhe, only: [:show, :edit, :update, :destroy]
  
    # GET /campeonato_detalhes
    def index
      @q = CampeonatoDetalhe.all.ransack(params[:q])
      @campeonato_detalhes = @q.result.includes(:categoria, :etapa, :campeonato).order(:ordem).page(params[:page])
    end
  
    # GET /campeonato_detalhes/1
    def show
    end
  
    # GET /campeonato_detalhes/new
    def new
      @campeonato_detalhe = CampeonatoDetalhe.new
    end
  
    # GET /campeonato_detalhes/1/edit
    def edit
    end
  
    # POST /campeonato_detalhes
    def create
      @campeonato_detalhe = CampeonatoDetalhe.new(campeonato_detalhe_params)
  
      if @campeonato_detalhe.save
        redirect_to campeonato_detalhes_url, notice: t('flash.create.notice')
      else
        render :new
      end
    end
  
    # PATCH/PUT /campeonato_detalhes/1
    def update
      if @campeonato_detalhe.update(campeonato_detalhe_params)
        redirect_to campeonato_detalhes_url, notice: t('flash.update.notice')
      else
        render :edit
      end
    end
  
    # DELETE /campeonato_detalhes/1
    def destroy
      @campeonato_detalhe.destroy
      redirect_to campeonato_detalhes_url, notice: t('flash.destroy.notice')
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_campeonato_detalhe
        @campeonato_detalhe = CampeonatoDetalhe.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def campeonato_detalhe_params
        params.require(:campeonato_detalhe).permit(:categoria_id, :etapa_id, :campeonato_id, :ordem)
      end
  end
  