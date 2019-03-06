class OpusController < ApplicationController
  before_action :set_opu, only: [:show, :edit, :update, :destroy]

  # GET /opus
  # GET /opus.json
  def index
    @opus = Opu.all
  end

  # GET /opus/1
  # GET /opus/1.json
  def show
  end

  # GET /opus/new
  def new
    @opu = Opu.new
  end

  # GET /opus/1/edit
  def edit
  end

  # POST /opus
  # POST /opus.json
  def create
    @opu = Opu.new(opu_params)

    respond_to do |format|
      if @opu.save
        format.html { redirect_to @opu, notice: 'Opu was successfully created.' }
        format.json { render :show, status: :created, location: @opu }
      else
        format.html { render :new }
        format.json { render json: @opu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opus/1
  # PATCH/PUT /opus/1.json
  def update
    respond_to do |format|
      if @opu.update(opu_params)
        format.html { redirect_to @opu, notice: 'Opu was successfully updated.' }
        format.json { render :show, status: :ok, location: @opu }
      else
        format.html { render :edit }
        format.json { render json: @opu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opus/1
  # DELETE /opus/1.json
  def destroy
    @opu.destroy
    respond_to do |format|
      format.html { redirect_to opus_url, notice: 'Opu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opu
      @opu = Opu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opu_params
      params.require(:opu).permit(:title, :designer, :year, :image_url)
    end
end
