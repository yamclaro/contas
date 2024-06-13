class EntradasController < ApplicationController
  before_action :set_entrada, only: %i[ show edit update destroy ]
  def index
    @entradas = Entrada.all
  end

  def show
  end

  def new
    @entrada = Entrada.new
  end

  def edit
  end

  def create
    @entrada = Entrada.new(entrada_params)

    respond_to do |format|
      if @entrada.save
        format.html { redirect_to entrada_url(@entrada), notice: "Entrada was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }

      end
    end
  end

  def update
    respond_to do |format|
      if @entrada.update(entrada_params)
        format.html { redirect_to entrada_url(@entrada), notice: "Entrada was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @entrada.destroy!

    respond_to do |format|
      format.html { redirect_to entradas_url, notice: "Entrada was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def set_entrada
      @entrada = Entrada.find(params[:id])
    end

    def entrada_params
      params.require(:entrada).permit(:valorPlanejado, :valorTotal, :valorTaxa, :vencimento, :descricao)
    end
end
