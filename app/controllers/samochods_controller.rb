class SamochodsController < ApplicationController
  before_action :set_samochod, only: [:show, :edit, :update, :destroy]

  # GET /samochods
  # GET /samochods.json
  def index
    @samochods = Samochod.paginate(:page => params[:page], :per_page => 25)
  end

  # GET /samochods/1
  # GET /samochods/1.json
  def show
  end

  # GET /samochods/new
  def new
    @samochod = Samochod.new
  end

  # GET /samochods/1/edit
  def edit
  end

  # POST /samochods
  # POST /samochods.json
  def create
    @samochod = Samochod.new(samochod_params)

    respond_to do |format|
      if @samochod.save
        format.html { redirect_to @samochod, notice: 'Samochod was successfully created.' }
        format.json { render :show, status: :created, location: @samochod }
      else
        format.html { render :new }
        format.json { render json: @samochod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /samochods/1
  # PATCH/PUT /samochods/1.json
  def update
    respond_to do |format|
      if @samochod.update(samochod_params)
        format.html { redirect_to @samochod, notice: 'Samochod was successfully updated.' }
        format.json { render :show, status: :ok, location: @samochod }
      else
        format.html { render :edit }
        format.json { render json: @samochod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /samochods/1
  # DELETE /samochods/1.json
  def destroy
    @samochod.destroy
    respond_to do |format|
      format.html { redirect_to samochods_url, notice: 'Samochod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_samochod
      @samochod = Samochod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def samochod_params
      params.require(:samochod).permit(:marka, :model)
    end
end
