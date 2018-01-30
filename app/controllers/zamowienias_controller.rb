class ZamowieniasController < ApplicationController
  before_action :set_zamowienia, only: [:show, :edit, :update, :destroy]

  # GET /zamowienias
  # GET /zamowienias.json
  def index
    @zamowienias = Zamowienia.all
  end

  # GET /zamowienias/1
  # GET /zamowienias/1.json
  def show
  end

  # GET /zamowienias/new
  def new
    @zamowienia = Zamowienia.new
  end

  # GET /zamowienias/1/edit
  def edit
  end

  # POST /zamowienias
  # POST /zamowienias.json
  def create
    @zamowienia = Zamowienia.new(zamowienia_params)

    respond_to do |format|
      if @zamowienia.save
        format.html { redirect_to @zamowienia, notice: 'Zamowienia was successfully created.' }
        format.json { render :show, status: :created, location: @zamowienia }
      else
        format.html { render :new }
        format.json { render json: @zamowienia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zamowienias/1
  # PATCH/PUT /zamowienias/1.json
  def update
    respond_to do |format|
      if @zamowienia.update(zamowienia_params)
        format.html { redirect_to @zamowienia, notice: 'Zamowienia was successfully updated.' }
        format.json { render :show, status: :ok, location: @zamowienia }
      else
        format.html { render :edit }
        format.json { render json: @zamowienia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zamowienias/1
  # DELETE /zamowienias/1.json
  def destroy
    @zamowienia.destroy
    respond_to do |format|
      format.html { redirect_to zamowienias_url, notice: 'Zamowienia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zamowienia
      @zamowienia = Zamowienia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zamowienia_params
      params.require(:zamowienia).permit(:id_zamowienia, :czas_realizacji, :produkty_na_zamowieniu_id)
    end
end
