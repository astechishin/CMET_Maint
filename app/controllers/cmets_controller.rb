class CmetsController < ApplicationController
  before_action :set_cmet, only: [:show, :edit, :update]

  # GET /cmets
  # GET /cmets.json
  def index
    @cmets = Cmet.all
  end

  # GET /cmets/1
  # GET /cmets/1.json
  def show
  end

  # GET /cmets/new
  def new
    @cmet = Cmet.new
  end

  # GET /cmets/1/edit
  def edit
  end

  # POST /cmets
  # POST /cmets.json
  def create
    @cmet = Cmet.new(cmet_params)

    respond_to do |format|
      if @cmet.save
        format.html { redirect_to @cmet, notice: 'Cmet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cmet }
      else
        format.html { render action: 'new' }
        format.json { render json: @cmet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cmets/1
  # PATCH/PUT /cmets/1.json
  def update
    respond_to do |format|
      if @cmet.update(cmet_params)
        format.html { redirect_to @cmet, notice: 'Cmet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cmet.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cmet
      @cmet = Cmet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cmet_params
      params.require(:cmet).permit(:identifier, :descriptor, :attribution, :description, :work_group, :domain_id)
    end
end
