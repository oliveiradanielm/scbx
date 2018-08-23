    class AtletasController < ApplicationController
    before_action :set_atleta, only: [:show, :edit, :update, :destroy]
  
    # GET /atletas
    def index
      @atletas = Atleta.all
    end
  
    # GET /atletas/1
    def show
    end
  
    # GET /atletas/new
    def new
      @atleta = Atleta.new
    end
  
    # GET /atletas/1/edit
    def edit
    end
  
    # POST /atletas
    def create
      @atleta = Atleta.new(atleta_params)
  
      if @atleta.save
        redirect_to @atleta, notice: 'Atleta criado com sucesso.'
      else
        render :new
      end
    end
  
    # PATCH/PUT /atletas/1
    def update
      if @atleta.update(atleta_params)
        redirect_to @atleta, notice: 'Atleta atualizado com sucesso.'
      else
        render :edit
      end
    end
  
    # DELETE /atletas/1
    def destroy
      @atleta.destroy
      redirect_to atletas_url, notice: 'Atleta excluído com sucesso.'
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_atleta
        @atleta = Atleta.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def atleta_params
        params.require(:atleta).permit(:nome, :nacionalidade, :naturalidade, :data_nascimento, :sexo, :cpf, :rg, :email, :passaporte, :validade_passaporte, :tipo_sanguineo_id, :licenca_cbc, :codigo_uci, :nome_mae, :nome_pai, :logradouro, :numero, :complemento, :bairro, :cep, :cidade, :uf, :telefone_residencial, :telefone_celular)
      end
  end
  