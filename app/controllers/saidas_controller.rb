class SaidasController < ApplicationController
  before_action :set_saida, only: %i[ show edit update destroy ]

  def index
    @saidas = Saida.all
  end

  def show
  end

  def new
    @saida = Saida.new
  end

  def edit
  end

  def create
    @saida = Saida.new(saida_params)

    respond_to do |format|
      if @saida.save
        format.html { redirect_to saida_url(@saida), notice: "Saida was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @saida.update(saida_params)
        format.html { redirect_to saida_url(@saida), notice: "Saida was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @saida.destroy!

    respond_to do |format|
      format.html { redirect_to saidas_url, notice: "Saida was successfully destroyed." }
    end
  end

  private
    def set_saida
      @saida = Saida.find(params[:id])
    end

    def saida_params
      params.require(:saida).permit(:valorPlanejado, :valorTotal, :valorTaxa, :vencimento, :descricao)
    end
end
