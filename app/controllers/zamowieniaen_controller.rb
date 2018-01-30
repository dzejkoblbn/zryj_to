class ZamowieniaenController < ApplicationController
  before_action :set_zamowieniaen, only: [:show, :edit, :update, :destroy]

  # GET /zamowieniaen
  # GET /zamowieniaen.json
  def index
    @zamowieniaen = Zamowienia.all
  end

  # GET /zamowieniaen/1
  # GET /zamowieniaen/1.json
  def show
  end

  # GET /zamowieniaen/new
  def new
    @zamowieniaen = Zamowienia.new
  end

  # GET /zamowieniaen/1/edit
  def edit
  end

  # POST /zamowieniaen
  # POST /zamowieniaen.json
  def create
    @zamowieniaen = Zamowienia.new(zamowieniaen_params)

    respond_to do |format|
      if @zamowieniaen.save
        format.html { redirect_to @zamowieniaen, notice: 'Zamowienia was successfully created.' }
        format.json { render :show, status: :created, location: @zamowieniaen }
      else
        format.html { render :new }
        format.json { render json: @zamowieniaen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zamowieniaen/1
  # PATCH/PUT /zamowieniaen/1.json
  def update
    respond_to do |format|
      if @zamowieniaen.update(zamowieniaen_params)
        format.html { redirect_to @zamowieniaen, notice: 'Zamowienia was successfully updated.' }
        format.json { render :show, status: :ok, location: @zamowieniaen }
      else
        format.html { render :edit }
        format.json { render json: @zamowieniaen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zamowieniaen/1
  # DELETE /zamowieniaen/1.json
  def destroy
    @zamowieniaen.destroy
    respond_to do |format|
      format.html { redirect_to zamowieniaen_url, notice: 'Zamowienia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zamowieniaen
      @zamowieniaen = Zamowienia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zamowieniaen_params
      params.require(:zamowieniaen).permit(:name, :code, :description)
    end
end
