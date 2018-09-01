class BateriasController < ApplicationController
  before_action :set_bateria, only: [:show, :edit, :update, :destroy]
  respond_to :html, :js
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
        # CampeonatoDetalhe.where()
        # @bateria.campeonato_detalhe.baterias do |bateria|
        #   bateria.bateria_detalhes.update_all(classificado: false)

          BateriaDetalhe.joins(bateria: :campeonato_detalhe).where(baterias: {campeonato_detalhe_id: @bateria.campeonato_detalhe_id} ).update_all(classificado: false)
        # end
        format.html {redirect_to campeonato_etapa_path(@bateria.campeonato_detalhe.campeonato, @bateria.campeonato_detalhe.etapa), notice: t('flash.create.notice')}
      else
        @bateria.bateria_detalhes.build if @bateria.bateria_detalhes.empty?
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
    redirect_to baterias_url, notice: t('flash.destroy.notice')
  end

  def new_bateria
    @bateria = Bateria.new(campeonato_detalhe_id: params[:campeonato_detalhe_id])
    @bateria.bateria_detalhes.build
    @raias_rand = (1..8).to_a.shuffle
  end

  def new_fase
    params.inspect
    # "campeonato_detalhe_id"=>"1", "inscritos"=>["3", "4", "30", "33"], "commit"=>"Nova Fase"}
    raias = (1..8).to_a.shuffle
    # bateria"=>{"campeonato_detalhe_id"=>"7", "tipo_bateria_id"=>"1", "numero"=>"", "complemento"=>"sadasdas", "bateria_detalhes_attributes"=>{"0"=>{"inscricao_id"=>"28", "raia_1"=>"1", "raia_2"=>"8", "raia_3"=>"4"}}, "inscricao_id"=>""}
    bateria_detalhes_attributes = {}
    params[:inscritos].each_with_index do |inscrito, index|
      bateria_detalhes_attributes.merge({index => {inscricao_id: inscrito, raia_1: raias[index]}})
    end
    @bateria = Bateria.new(campeonato_detalhe_id: params[:campeonato_detalhe_id], tipo_bateria_id: params[:tipo_bateria_id], complemento: params[:complemento], numero: params[:numero], bateria_detalhes_attributes: bateria_detalhes_attributes)
    @bateria
    respond_to do |format|
      if @bateria.save
        format.html {redirect_to campeonato_etapa_path(@bateria.campeonato_detalhe.campeonato, @bateria.campeonato_detalhe.etapa), notice: t('flash.create.notice')}
      else
        format.html {redirect_to campeonato_etapa_path(@bateria.campeonato_detalhe.campeonato, @bateria.campeonato_detalhe.etapa), notice: "Erro ao criar bateria"}
        # format.html {render :new}
        format.js {render :new}
      end
    end
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
  