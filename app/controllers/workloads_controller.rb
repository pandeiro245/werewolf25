class WorkloadsController < ApplicationController
  before_action :set_workload, only: [:edit]

  # GET /workloads/1/edit
  def show
  end

  # POST /workloads
  def create
    @workload = Workload.create!
    redirect_to edit_workload_path(@workload)
  end

  private
    def set_workload
      @workload = Workload.find(params[:id])
    end
end
