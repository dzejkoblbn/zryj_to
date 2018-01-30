class KlienciController < ApplicationController
  before_action :set_klienci, only: [:show, :edit, :update, :destroy]

  # GET /klienci
  # GET /klienci.json
  def index
    @klienci = Klienci.all
  end

  # GET /klienci/1
  # GET /klienci/1.json
  def show
  end

  # GET /klienci/new
  def new
    @klienci = Klienci.new
  end

  # GET /klienci/1/edit
  def edit
  end

  # POST /klienci
  # POST /klienci.json
  def create
    @klienci = Klienci.new(klienci_params)

    respond_to do |format|
      if @klienci.save
        format.html { redirect_to @klienci, notice: 'Klienci was successfully created.' }
        format.json { render :show, status: :created, location: @klienci }
      else
        format.html { render :new }
        format.json { render json: @klienci.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /klienci/1
  # PATCH/PUT /klienci/1.json
  def update
    respond_to do |format|
      if @klienci.update(klienci_params)
        format.html { redirect_to @klienci, notice: 'Klienci was successfully updated.' }
        format.json { render :show, status: :ok, location: @klienci }
      else
        format.html { render :edit }
        format.json { render json: @klienci.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /klienci/1
  # DELETE /klienci/1.json
  def destroy
    @klienci.destroy
    respond_to do |format|
      format.html { redirect_to klienci_index_url, notice: 'Klienci was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_klienci
      @klienci = Klienci.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def klienci_params
      params.require(:klienci).permit(:index)
    end
end
