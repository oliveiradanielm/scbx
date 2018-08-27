    class TipoBateriasController < ApplicationController
    before_action :set_tipo_bateria, only: [:show, :edit, :update, :destroy]
  
    # GET /tipo_baterias
    def index
      @q = TipoBateria.all.ransack(params[:q])
      @tipo_baterias = @q.result.page(params[:page])
    end
  
    # GET /tipo_baterias/1
    def show
    end
  
    # GET /tipo_baterias/new
    def new
      @tipo_bateria = TipoBateria.new
    end
  
    # GET /tipo_baterias/1/edit
    def edit
    end
  
    # POST /tipo_baterias
    def create
      @tipo_bateria = TipoBateria.new(tipo_bateria_params)
  
      if @tipo_bateria.save
        redirect_to tipo_baterias_urla, notice: t('flash.create.notice')
      else
        render :new
      end
    end
  
    # PATCH/PUT /tipo_baterias/1
    def update
      if @tipo_bateria.update(tipo_bateria_params)
        redirect_to tipo_baterias_url, notice: t('flash.update.notice')
      else
        render :edit
      end
    end
  
    # DELETE /tipo_baterias/1
    def destroy
      @tipo_bateria.destroy
      redirect_to tipo_baterias_url, notice: t('flash.destroy.notice')
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_tipo_bateria
        @tipo_bateria = TipoBateria.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def tipo_bateria_params
        params.require(:tipo_bateria).permit(:descricao)
      end
  end
  