class ResipesController < ApplicationController
  before_action :set_resipe, only: [:show, :edit, :update, :destroy]

  # GET /resipes
  # GET /resipes.json
  def index
    @resipes = Resipe.all
  end

  # GET /resipes/1
  # GET /resipes/1.json
  def show
  end

  # GET /resipes/new
  def new
    @resipe = Resipe.new
  end

  # GET /resipes/1/edit
  def edit
  end

  # POST /resipes
  # POST /resipes.json
  def create
    @resipe = Resipe.new(resipe_params)

    respond_to do |format|
      if @resipe.save
        format.html { redirect_to @resipe, notice: 'Resipe was successfully created.' }
        format.json { render :show, status: :created, location: @resipe }
      else
        format.html { render :new }
        format.json { render json: @resipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resipes/1
  # PATCH/PUT /resipes/1.json
  def update
    respond_to do |format|
      if @resipe.update(resipe_params)
        format.html { redirect_to @resipe, notice: 'Resipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @resipe }
      else
        format.html { render :edit }
        format.json { render json: @resipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resipes/1
  # DELETE /resipes/1.json
  def destroy
    @resipe.destroy
    respond_to do |format|
      format.html { redirect_to resipes_url, notice: 'Resipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resipe
      @resipe = Resipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resipe_params
      params.require(:resipe).permit(:recipe_id, :name, :minutes, :contributor_id, :sub,itted, :tags, :nutrition, :n_steps, :integer, :description, :ingredients, :n_ingredients, :rec)
    end
end
