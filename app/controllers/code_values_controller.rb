class CodeValuesController < ApplicationController
  before_action :set_code_value, only: [:show, :edit, :update, :destroy]

  # GET /code_values
  # GET /code_values.json
  def index
    @code_values = CodeValue.all
  end

  # GET /code_values/1
  # GET /code_values/1.json
  def show
  end

  # GET /code_values/new
  def new
    @code_value = CodeValue.new
  end

  # GET /code_values/1/edit
  def edit
  end

  # POST /code_values
  # POST /code_values.json
  def create
    @code_value = CodeValue.new(code_value_params)

    respond_to do |format|
      if @code_value.save
        format.html { redirect_to @code_value, notice: 'Code value was successfully created.' }
        format.json { render action: 'show', status: :created, location: @code_value }
      else
        format.html { render action: 'new' }
        format.json { render json: @code_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_values/1
  # PATCH/PUT /code_values/1.json
  def update
    respond_to do |format|
      if @code_value.update(code_value_params)
        format.html { redirect_to @code_value, notice: 'Code value was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @code_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_values/1
  # DELETE /code_values/1.json
  def destroy
    @code_value.destroy
    respond_to do |format|
      format.html { redirect_to code_values_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_value
      @code_value = CodeValue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_value_params
      params[:code_value]
    end
end
