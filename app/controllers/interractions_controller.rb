class InterractionsController < ApplicationController
  before_action :set_interraction, only: [:show, :edit, :update, :destroy]

  # GET /interractions
  # GET /interractions.json
  def index
    @interractions = Interraction.all
  end

  # GET /interractions/1
  # GET /interractions/1.json
  def show
  end

  # GET /interractions/new
  def new
    @interraction = Interraction.new
  end

  # GET /interractions/1/edit
  def edit
  end

  # POST /interractions
  # POST /interractions.json
  def create
    @interraction = Interraction.new(interraction_params)

    respond_to do |format|
      if @interraction.save
        format.html { redirect_to @interraction, notice: 'Interraction was successfully created.' }
        format.json { render :show, status: :created, location: @interraction }
      else
        format.html { render :new }
        format.json { render json: @interraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interractions/1
  # PATCH/PUT /interractions/1.json
  def update
    respond_to do |format|
      if @interraction.update(interraction_params)
        format.html { redirect_to @interraction, notice: 'Interraction was successfully updated.' }
        format.json { render :show, status: :ok, location: @interraction }
      else
        format.html { render :edit }
        format.json { render json: @interraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interractions/1
  # DELETE /interractions/1.json
  def destroy
    @interraction.destroy
    respond_to do |format|
      format.html { redirect_to interractions_url, notice: 'Interraction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interraction
      @interraction = Interraction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interraction_params
      params.require(:interraction).permit(:user_id, :recipe_id, :date, :rating, :review)
    end
end
