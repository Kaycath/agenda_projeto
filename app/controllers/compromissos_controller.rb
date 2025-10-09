class CompromissosController < ApplicationController
  before_action :set_compromisso, only: %i[ show edit update destroy ]

  # GET /compromissos or /compromissos.json
  def index
    @compromissos = Compromisso.all
  end

  # GET /compromissos/1 or /compromissos/1.json
  def show
  end

  # GET /compromissos/new
  def new
    @compromisso = Compromisso.new
  end

  # GET /compromissos/1/edit
  def edit
  end

  # POST /compromissos or /compromissos.json
  def create
    @compromisso = Compromisso.new(compromisso_params)

    respond_to do |format|
      if @compromisso.save
        format.html { redirect_to @compromisso, notice: "Compromisso was successfully created." }
        format.json { render :show, status: :created, location: @compromisso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @compromisso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compromissos/1 or /compromissos/1.json
  def update
    respond_to do |format|
      if @compromisso.update(compromisso_params)
        format.html { redirect_to @compromisso, notice: "Compromisso was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @compromisso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @compromisso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compromissos/1 or /compromissos/1.json
  def destroy
    @compromisso.destroy!

    respond_to do |format|
      format.html { redirect_to compromissos_path, notice: "Compromisso was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compromisso
      @compromisso = Compromisso.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def compromisso_params
      params.expect(compromisso: [ :titulo, :descricao, :data, :horario ])
    end
end
