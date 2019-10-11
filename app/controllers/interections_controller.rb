class InterectionsController < ApplicationController
  before_action :set_interection, only: [:show, :edit, :update, :destroy]

  # GET /interections
  # GET /interections.json
  def index
    @interections = Interection.all
  end

  # GET /interections/1
  # GET /interections/1.json
  def show
  end

  # GET /interections/new
  def new
    @interection = Interection.new
  end

  # GET /interections/1/edit
  def edit
  end

  # POST /interections
  # POST /interections.json
  def create
    @interection = Interection.new(interection_params)

    respond_to do |format|
      if @interection.save
        format.html { redirect_to @interection, notice: 'Interection was successfully created.' }
        format.json { render :show, status: :created, location: @interection }
      else
        format.html { render :new }
        format.json { render json: @interection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interections/1
  # PATCH/PUT /interections/1.json
  def update
    respond_to do |format|
      if @interection.update(interection_params)
        format.html { redirect_to @interection, notice: 'Interection was successfully updated.' }
        format.json { render :show, status: :ok, location: @interection }
      else
        format.html { render :edit }
        format.json { render json: @interection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interections/1
  # DELETE /interections/1.json
  def destroy
    @interection.destroy
    respond_to do |format|
      format.html { redirect_to interections_url, notice: 'Interection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interection
      @interection = Interection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interection_params
      params.require(:interection).permit(:user_id, :recipe_id, :date, :rating, :review)
    end
end
