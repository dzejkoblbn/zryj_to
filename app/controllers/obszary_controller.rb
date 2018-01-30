class ObszaryController < ApplicationController
  before_action :set_obszary, only: [:show, :edit, :update, :destroy]

  # GET /obszary
  # GET /obszary.json
  def index
    @obszary = Obszary.all
  end

  # GET /obszary/1
  # GET /obszary/1.json
  def show
  end

  # GET /obszary/new
  def new
    @obszary = Obszary.new
  end

  # GET /obszary/1/edit
  def edit
  end

  # POST /obszary
  # POST /obszary.json
  def create
    @obszary = Obszary.new(obszary_params)

    respond_to do |format|
      if @obszary.save
        format.html { redirect_to @obszary, notice: 'Obszary was successfully created.' }
        format.json { render :show, status: :created, location: @obszary }
      else
        format.html { render :new }
        format.json { render json: @obszary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obszary/1
  # PATCH/PUT /obszary/1.json
  def update
    respond_to do |format|
      if @obszary.update(obszary_params)
        format.html { redirect_to @obszary, notice: 'Obszary was successfully updated.' }
        format.json { render :show, status: :ok, location: @obszary }
      else
        format.html { render :edit }
        format.json { render json: @obszary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obszary/1
  # DELETE /obszary/1.json
  def destroy
    @obszary.destroy
    respond_to do |format|
      format.html { redirect_to obszary_index_url, notice: 'Obszary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obszary
      @obszary = Obszary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def obszary_params
      params.require(:obszary).permit(:index)
    end
end
