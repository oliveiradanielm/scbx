    class BateriaDetalhesController < ApplicationController
    before_action :set_bateria_detalhe, only: [:show, :edit, :update, :destroy]
    before_action :set_bateria, only: [:index, :new, :create, :show, :edit, :update, :destroy]
    # GET /bateria_detalhes
    def index
      @q = BateriaDetalhe.includes(:bateria).ransack(params[:q])
      @bateria_detalhes = @q.result.includes(:inscricao).page(params[:page])
    end
  
    # GET /bateria_detalhes/1
    def show
    end
  
    # GET /bateria_detalhes/new
    def new
      @bateria_detalhe = BateriaDetalhe.new
    end
  
    # GET /bateria_detalhes/1/edit
    def edit
    end
  
    # POST /bateria_detalhes
    def create
      @bateria_detalhe = BateriaDetalhe.new(bateria_detalhe_params)
      @bateria_detalhe.bateria = @bateria
      if @bateria_detalhe.save
        redirect_to @bateria, notice: t('flash.create.notice')
      else
        render 'baterias/show'
      end
    end
  
    # PATCH/PUT /bateria_detalhes/1
    def update
      if @bateria_detalhe.update(bateria_detalhe_params)
        redirect_to @bateria_detalhe, notice: t('flash.update.notice')
      else
        render :edit
      end
    end
  
    # DELETE /bateria_detalhes/1
    def destroy
      @bateria_detalhe.destroy
      redirect_to @bateria, notice: t('flash.destroy.notice')
    end

    def set_resultado
      @bateria_detalhe = BateriaDetalhe.find_by(id: params[:bateria_detalhe_id])
      @bateria_detalhe.resultado_1 = params[:resultado_1]
      @bateria_detalhe.pontos = @bateria_detalhe.resultado_1.to_i + @bateria_detalhe.resultado_2.to_i + @bateria_detalhe.resultado_3.to_i
      if @bateria_detalhe.save

      else

      end
      @row = params[:row]
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_bateria_detalhe
        @bateria_detalhe = BateriaDetalhe.find(params[:id])
      end

      def set_bateria
        @bateria = Bateria.find_by(id: (params[:bateria_id] || @bateria_detalhe.bateria))
      end
  
      # Only allow a trusted parameter "white list" through.
      def bateria_detalhe_params
        params.require(:bateria_detalhe).permit(:bateria_id, :inscricao_id, :raia_1, :raia_2, :raia_3, :resultado_1, :resultado_2, :resultado_3, :pontos, :resultado_geral)
      end
  end
  