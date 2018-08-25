    class TipoCategoriasController < ApplicationController
    before_action :set_tipo_categoria, only: [:show, :edit, :update, :destroy]
  
    # GET /tipo_categorias
    def index
      @tipo_categorias = TipoCategoria.all
    end
  
    # GET /tipo_categorias/1
    def show
    end
  
    # GET /tipo_categorias/new
    def new
      @tipo_categoria = TipoCategoria.new
    end
  
    # GET /tipo_categorias/1/edit
    def edit
    end
  
    # POST /tipo_categorias
    def create
      @tipo_categoria = TipoCategoria.new(tipo_categoria_params)
  
      if @tipo_categoria.save
        redirect_to @tipo_categoria, notice: t('flash.create.notice')
      else
        render :new
      end
    end
  
    # PATCH/PUT /tipo_categorias/1
    def update
      if @tipo_categoria.update(tipo_categoria_params)
        redirect_to @tipo_categoria, notice: t('flash.update.notice')
      else
        render :edit
      end
    end
  
    # DELETE /tipo_categorias/1
    def destroy
      @tipo_categoria.destroy
      redirect_to tipo_categorias_url, notice: t('flash.destroy.notice')
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_tipo_categoria
        @tipo_categoria = TipoCategoria.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def tipo_categoria_params
        params.require(:tipo_categoria).permit(:descricao)
      end
  end
  