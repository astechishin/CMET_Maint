class WorkGroupsController < ApplicationController
  before_action :set_work_group, only: [:show]

  # GET /work_groups
  # GET /work_groups.json
  def index
    @work_groups = WorkGroup.all
  end

  # GET /work_groups/1
  # GET /work_groups/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_group
      @work_group = WorkGroup.find(params[:id])
    end
end
