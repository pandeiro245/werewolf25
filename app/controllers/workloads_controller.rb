class WorkloadsController < ApplicationController
  before_action :set_workload, only: [:edit]

  # GET /workloads/1/edit
  def edit
    if @workload.remain <= 0
      @workload.done = true
      @workload.save!
    end
    
    if @workload.done
      redirect_to room_path(@workload.room)
    end
  end

  # POST /workloads
  def create
    room = Room.last
    @workload = Workload.create!(user_id: cookies[:user_id], room: room)
    redirect_to edit_workload_path(@workload)
  end

  private
    def set_workload
      @workload = Workload.find(params[:id])
    end
end
