class RestauracjeController < ApplicationController
  before_action :set_restauracje, only: [:show, :edit, :update, :destroy]

  # GET /restauracje
  # GET /restauracje.json
  def index
    @restauracje = Restauracje.all
  end

  # GET /restauracje/1
  # GET /restauracje/1.json
  def show
  end

  # GET /restauracje/new
  def new
    @restauracje = Restauracje.new
  end

  # GET /restauracje/1/edit
  def edit
  end

  # POST /restauracje
  # POST /restauracje.json
  def create
    @restauracje = Restauracje.new(restauracje_params)

    respond_to do |format|
      if @restauracje.save
        format.html { redirect_to @restauracje, notice: 'Restauracje was successfully created.' }
        format.json { render :show, status: :created, location: @restauracje }
      else
        format.html { render :new }
        format.json { render json: @restauracje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restauracje/1
  # PATCH/PUT /restauracje/1.json
  def update
    respond_to do |format|
      if @restauracje.update(restauracje_params)
        format.html { redirect_to @restauracje, notice: 'Restauracje was successfully updated.' }
        format.json { render :show, status: :ok, location: @restauracje }
      else
        format.html { render :edit }
        format.json { render json: @restauracje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restauracje/1
  # DELETE /restauracje/1.json
  def destroy
    @restauracje.destroy
    respond_to do |format|
      format.html { redirect_to restauracje_index_url, notice: 'Restauracje was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restauracje
      @restauracje = Restauracje.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restauracje_params
      params.require(:restauracje).permit(:index)
    end
end
