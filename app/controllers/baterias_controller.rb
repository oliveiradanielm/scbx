    class BateriasController < ApplicationController
    before_action :set_bateria, only: [:show, :edit, :update, :destroy]
  
    # GET /baterias
    def index
      @q = Bateria.all.ransack(params[:q])
      @baterias = @q.result.includes(:tipo_bateria, campeonato_detalhe: [:categoria, :campeonato, :etapa]).page(params[:page])
    end
  
    # GET /baterias/1
    def show
    end
  
    # GET /baterias/new
    def new
      @bateria = Bateria.new
    end
  
    # GET /baterias/1/edit
    def edit
    end
  
    # POST /baterias
    def create
      @bateria = Bateria.new(bateria_params)
  
      if @bateria.save
        redirect_to @bateria, notice: t('flash.create.notice')
      else
        render :new
      end
    end
  
    # PATCH/PUT /baterias/1
    def update
      if @bateria.update(bateria_params)
        redirect_to @bateria, notice: t('flash.update.notice')
      else
        render :edit
      end
    end
  
    # DELETE /baterias/1
    def destroy
      @bateria.destroy
      redirect_to baterias_url, notice: t('flash.destroy.notice')
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_bateria
        @bateria = Bateria.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def bateria_params
        params.require(:bateria).permit(:tipo_bateria_id, :numero, :campeonato_detalhe_id, :complemento)
      end
  end
  