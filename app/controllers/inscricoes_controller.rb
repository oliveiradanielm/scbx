    class InscricoesController < ApplicationController
    before_action :set_inscricao, only: [:show, :edit, :update, :destroy]

    # GET /inscricoes
    def index
      @q = Inscricao.ransack(params[:q])
      if params[:etapa_id]
        @inscricoes = @q.result.includes(:atleta, :categoria, etapa: [:campeonato]).where(etapa_id: params[:etapa_id]).order('atletas.nome').page(params[:page])
      else
        @inscricoes = @q.result.includes(:atleta, :categoria, etapa: [:campeonato]).page(params[:page])
      end
    end
  
    # GET /inscricoes/1
    def show
    end
  
    # GET /inscricoes/new
    def new
      @inscricao = Inscricao.new
    end
  
    # GET /inscricoes/1/edit
    def edit
    end
  
    # POST /inscricoes
    def create
      @inscricao = Inscricao.new(inscricao_params)
  
      if @inscricao.save
        redirect_to inscricoes_url, notice: t('flash.create.notice')
      else
        render :new
      end
    end
  
    # PATCH/PUT /inscricoes/1
    def update
      if @inscricao.update(inscricao_params)
        redirect_to inscricoes_url, notice: t('flash.update.notice')
      else
        render :edit
      end
    end
  
    # DELETE /inscricoes/1
    def destroy
      @inscricao.destroy
      redirect_to inscricoes_url, notice: t('flash.destroy.notice')
    end

    def confirmar_inscricao
      inscricao = Inscricao.find_by(id: params[:inscricao_id])
      if not inscricao.confirmado and inscricao.update_attribute(:confirmado, true)
        flash[:notice] = "Inscrição confirmada com sucesso."
      else
        flash[:error] = "Não foi possível confirmar a inscrição."
      end
      redirect_to inscricoes_url
    end

    def get_atleta
      # inscrito_id = params['bateria']['bateria_detalhes_attributes']['0']['inscricao_id']
      @inscrito = Inscricao.find_by(id: params[:bateria][:inscricao_id])
      @bateria = Bateria.new(campeonato_detalhe_id: params[:campeonato_detalhe_id])
      session[:inscritos] = @bateria.campeonato_detalhe.inscritos.collect{|x| [x.nome_placa,x.id]}#.to_h.tap{ |x| x.delete(@inscrito.id)}
      @atleta = @inscrito.atleta
      @row = params[:row]
      respond_to do |format|
        format.js {  }
      end
    end

    def get_atleta_fase
      # inscrito_id = params['bateria']['bateria_detalhes_attributes']['0']['inscricao_id']
      inscricao_id = params[:bateria].blank? ? params[:bateria_detalhe][:inscricao_id] : params[:bateria][:inscricao_id]
      @inscrito = Inscricao.find_by(id: inscricao_id)
      @bateria = Bateria.new(campeonato_detalhe_id: params[:campeonato_detalhe_id])
      @atleta = @inscrito.atleta
      @row = params[:row]
      @raia = params[:raia]
      respond_to do |format|
        format.js {  }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_inscricao
        @inscricao = Inscricao.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def inscricao_params
        params.require(:inscricao).permit(:atleta_id, :categoria_id, :etapa_id, :confirmado, :placa)
      end
  end
  