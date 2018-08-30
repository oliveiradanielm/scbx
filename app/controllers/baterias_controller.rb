class BateriasController < ApplicationController
  before_action :set_bateria, only: [:show, :edit, :update, :destroy]

  # GET /baterias
  def index
    @q = Bateria.all.ransack(params[:q])
    @baterias = @q.result.includes(:tipo_bateria, campeonato_detalhe: [:campeonato, :etapa, :categoria]).page(params[:page])
  end

  # GET /baterias/1
  def show
  end

  # GET /baterias/new
  def new
    @bateria = Bateria.new(campeonato_detalhe_id: params[:campeonato_detalhe_id])
    @bateria.bateria_detalhes.build
  end

  # GET /baterias/1/edit
  def edit
  end

  # POST /baterias
  def create
    @bateria = Bateria.new(bateria_params)
    respond_to do |format|
      if @bateria.save
        redirect_to campeonato_etapa_path(@bateria.campeonato_detalhe.campeonato, @bateria.campeonato_detalhe.etapa), notice: t('flash.create.notice')
      else
        format.js {render :new}
      end
    end
  end

  # PATCH/PUT /baterias/1
  def update
    if @bateria.update(bateria_params)
      redirect_to @bateria.campeonato_detalhe.etapa, notice: t('flash.update.notice')
    else
      render :edit
    end
  end

  # DELETE /baterias/1
  def destroy
    @etapa = @bateria.campeonato_detalhe.etapa
    @bateria.destroy
    redirect_to @etapa, notice: t('flash.destroy.notice')
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_bateria
    @bateria = Bateria.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def bateria_params
    params.require(:bateria).permit(:tipo_bateria_id, :numero, :campeonato_detalhe_id, :complemento, bateria_detalhes_attributes: [:id, :inscricao_id, :raia_1, :raia_2, :raia_3, :_destroy])
  end
end
  