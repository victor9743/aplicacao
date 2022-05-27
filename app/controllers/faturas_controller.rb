class FaturasController < ApplicationController
  before_action :set_fatura, only: %i[ show edit update destroy ]

  # GET /faturas or /faturas.json
  def index
    @faturas = Fatura.all
  end

  # GET /faturas/1 or /faturas/1.json
  def show
  end

  # GET /faturas/new
  def new
    @fatura = Fatura.new
  end

  # GET /faturas/1/edit
  def edit
  end

  # POST /faturas or /faturas.json
  def create
    @fatura = Fatura.new(fatura_params)

    respond_to do |format|
      if @fatura.save
        format.html { redirect_to fatura_url(@fatura), notice: "Fatura was successfully created." }
        format.json { render :show, status: :created, location: @fatura }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faturas/1 or /faturas/1.json
  def update
    respond_to do |format|
      if @fatura.update(fatura_params)
        format.html { redirect_to fatura_url(@fatura), notice: "Fatura was successfully updated." }
        format.json { render :show, status: :ok, location: @fatura }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faturas/1 or /faturas/1.json
  def destroy
    @fatura.destroy

    respond_to do |format|
      format.html { redirect_to faturas_url, notice: "Fatura was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fatura
      @fatura = Fatura.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fatura_params
      params.require(:fatura).permit(:descricao, :image)
    end
end
