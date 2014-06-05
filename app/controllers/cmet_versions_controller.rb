class CmetVersionsController < ApplicationController
  before_action :set_cmet_version, only: [:show, :edit, :update]

  # GET /cmet_versions
  # GET /cmet_versions.json
  def index
    @cmet_versions = CmetVersion.all
  end

  # GET /cmet_versions/1
  # GET /cmet_versions/1.json
  def show
  end

  # GET /cmet_versions/new
  def new
    @cmet_version = CmetVersion.new
  end

  # GET /cmet_versions/1/edit
  def edit
  end

  # POST /cmet_versions
  # POST /cmet_versions.json
  def create
    @cmet_version = CmetVersion.new(cmet_version_params)

    respond_to do |format|
      if @cmet_version.save
        format.html { redirect_to @cmet_version, notice: 'Cmet version was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cmet_version }
      else
        format.html { render action: 'new' }
        format.json { render json: @cmet_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cmet_versions/1
  # PATCH/PUT /cmet_versions/1.json
  def update
    respond_to do |format|
      if @cmet_version.update(cmet_version_params)
        format.html { redirect_to @cmet_version, notice: 'Cmet version was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cmet_version.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_cmet_version
    @cmet_version = CmetVersion.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def cmet_version_params
    params.require(:cmet_version).permit(:cmet_id, :realm, :version, :status, :status_date)
  end
end
