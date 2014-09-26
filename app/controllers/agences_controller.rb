class AgencesController < ApplicationController
  before_action :set_agence, only: [:show, :edit, :update, :destroy]

  # GET /agences
  # GET /agences.json
  def index
    @agences = Agence.all
  end

  # GET /agences/1
  # GET /agences/1.json
  def show
  end

  # GET /agences/new
  def new
    @agence = Agence.new
  end

  # GET /agences/1/edit
  def edit
  end

  # POST /agences
  # POST /agences.json
  def create
    @agence = Agence.new(agence_params)

    respond_to do |format|
      if @agence.save
        format.html { redirect_to @agence, notice: 'Agence was successfully created.' }
        format.json { render :show, status: :created, location: @agence }
      else
        format.html { render :new }
        format.json { render json: @agence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agences/1
  # PATCH/PUT /agences/1.json
  def update
    respond_to do |format|
      if @agence.update(agence_params)
        format.html { redirect_to @agence, notice: 'Agence was successfully updated.' }
        format.json { render :show, status: :ok, location: @agence }
      else
        format.html { render :edit }
        format.json { render json: @agence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agences/1
  # DELETE /agences/1.json
  def destroy
    @agence.destroy
    respond_to do |format|
      format.html { redirect_to agences_url, notice: 'Agence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agence
      @agence = Agence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agence_params
      params.require(:agence).permit(:nom)
    end
end
