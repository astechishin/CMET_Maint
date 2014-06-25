class CodeValuesController < ApplicationController
  before_action :set_code_value, only: [:show]

  # GET /code_values
  # GET /code_values.json
  def index
    @code_values = CodeValue.all
  end

  # GET /code_values/1
  # GET /code_values/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_value
      @code_value = CodeValue.find(params[:id])
    end
end
