class UliceController < ApplicationController
  before_action :set_ulice, only: [:show, :edit, :update, :destroy]

  # GET /ulice
  # GET /ulice.json
  def index
    @ulice = Ulice.all
  end

  # GET /ulice/1
  # GET /ulice/1.json
  def show
  end

  # GET /ulice/new
  def new
    @ulice = Ulice.new
  end

  # GET /ulice/1/edit
  def edit
  end

  # POST /ulice
  # POST /ulice.json
  def create
    @ulice = Ulice.new(ulice_params)

    respond_to do |format|
      if @ulice.save
        format.html { redirect_to @ulice, notice: 'Ulice was successfully created.' }
        format.json { render :show, status: :created, location: @ulice }
      else
        format.html { render :new }
        format.json { render json: @ulice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ulice/1
  # PATCH/PUT /ulice/1.json
  def update
    respond_to do |format|
      if @ulice.update(ulice_params)
        format.html { redirect_to @ulice, notice: 'Ulice was successfully updated.' }
        format.json { render :show, status: :ok, location: @ulice }
      else
        format.html { render :edit }
        format.json { render json: @ulice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ulice/1
  # DELETE /ulice/1.json
  def destroy
    @ulice.destroy
    respond_to do |format|
      format.html { redirect_to ulice_index_url, notice: 'Ulice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ulice
      @ulice = Ulice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ulice_params
      params.require(:ulice).permit(:index)
    end
end
