class ProduktyController < ApplicationController
  before_action :set_produkty, only: [:show, :edit, :update, :destroy]

  # GET /produkty
  # GET /produkty.json
  def index
    @produkty = Produkty.all
  end

  # GET /produkty/1
  # GET /produkty/1.json
  def show
  end

  # GET /produkty/new
  def new
    @produkty = Produkty.new
  end

  # GET /produkty/1/edit
  def edit
  end

  # POST /produkty
  # POST /produkty.json
  def create
    @produkty = Produkty.new(produkty_params)

    respond_to do |format|
      if @produkty.save
        format.html { redirect_to @produkty, notice: 'Produkty was successfully created.' }
        format.json { render :show, status: :created, location: @produkty }
      else
        format.html { render :new }
        format.json { render json: @produkty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produkty/1
  # PATCH/PUT /produkty/1.json
  def update
    respond_to do |format|
      if @produkty.update(produkty_params)
        format.html { redirect_to @produkty, notice: 'Produkty was successfully updated.' }
        format.json { render :show, status: :ok, location: @produkty }
      else
        format.html { render :edit }
        format.json { render json: @produkty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produkty/1
  # DELETE /produkty/1.json
  def destroy
    @produkty.destroy
    respond_to do |format|
      format.html { redirect_to produkty_index_url, notice: 'Produkty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produkty
      @produkty = Produkty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produkty_params
      params.require(:produkty).permit(:index)
    end
end
