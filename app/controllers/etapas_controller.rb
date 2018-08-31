    class EtapasController < ApplicationController
    before_action :set_etapa, only: [:show, :edit, :update, :destroy]
    before_action :set_campeonato, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  
    # GET /etapas
    def index
      @etapas = Etapa.includes(:campeonato).where(campeonato_id: params[:campeonato_id])
      @campeonato = Campeonato.find_by(id: params[:campeonato_id])
    end
  
    # GET /etapas/1
    def show
    end
  
    # GET /etapas/new
    def new
      @etapa = Etapa.new
      @campeonato = Campeonato.find_by(id: params[:campeonato_id])
    end
  
    # GET /etapas/1/edit
    def edit
    end
  
    # POST /etapas
    def create
      @etapa = Etapa.new(etapa_params)
      @etapa.campeonato = @campeonato
      if @etapa.save
        redirect_to campeonato_etapas_path(@campeonato), notice: t('flash.create.notice')
      else
        render :new
      end
    end
  
    # PATCH/PUT /etapas/1
    def update
      if @etapa.update(etapa_params)
        redirect_to @etapa, notice: t('flash.update.notice')
      else
        render :edit
      end
    end
  
    # DELETE /etapas/1
    def destroy
      @etapa.destroy
      redirect_to etapas_url, notice: t('flash.destroy.notice')
    end

    def resultado
      begin
        @etapa = Etapa.find(1)
        respond_to do |format|
          format.html {render layout: 'pdf.html'}
          format.pdf do
            return render pdf: "resultado", template: "etapas/resultado.html.erb", layout: 'pdf.html', page_size: 'A4'
          end
        end
      rescue => e
        puts e.inspect
        flash[:error] = e.message
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_etapa
        @etapa = Etapa.find(params[:id])
      end

      def set_campeonato
        @campeonato = Campeonato.find_by(id: (params[:campeonato_id] || @etapa.campeonato_id))
      end
  
      # Only allow a trusted parameter "white list" through.
      def etapa_params
        params.require(:etapa).permit(:descricao, :data, :cidade, :uf, :campeonato_id)
      end
  end
  