class BottomsController < ApplicationController
  before_action :set_bottom, only: [:show, :edit, :update, :destroy]

  # GET /bottoms
  # GET /bottoms.json
  def index
    @bottoms = Bottom.all
  end

  # GET /bottoms/1
  # GET /bottoms/1.json
  def show
  end

  # GET /bottoms/new
  def new
    @bottom = Bottom.new
  end

  # GET /bottoms/1/edit
  def edit
  end

  # POST /bottoms
  # POST /bottoms.json
  def create
    @bottom = Bottom.new(bottom_params)

    respond_to do |format|
      if @bottom.save
        format.html { redirect_to @bottom, notice: 'Bottom was successfully created.' }
        format.json { render :show, status: :created, location: @bottom }
      else
        format.html { render :new }
        format.json { render json: @bottom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bottoms/1
  # PATCH/PUT /bottoms/1.json
  def update
    respond_to do |format|
      if @bottom.update(bottom_params)
        format.html { redirect_to @bottom, notice: 'Bottom was successfully updated.' }
        format.json { render :show, status: :ok, location: @bottom }
      else
        format.html { render :edit }
        format.json { render json: @bottom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bottoms/1
  # DELETE /bottoms/1.json
  def destroy
    @bottom.destroy
    respond_to do |format|
      format.html { redirect_to bottoms_url, notice: 'Bottom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bottom
      @bottom = Bottom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bottom_params
      params.require(:bottom).permit(:picture)
    end
end
