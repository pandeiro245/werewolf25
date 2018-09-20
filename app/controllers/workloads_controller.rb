class WorkloadsController < ApplicationController
  before_action :set_workload, only: [:edit]

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
    params = {user_id: current_user.id, room: room}
    @workload = Workload.create!(params)
    m = Member.find_or_create_by(params)
    if m.role.blank?
      m.role = Role.find_by(name: 'citizen')
      m.save
    end
    redirect_to edit_workload_path(@workload)
  end

  private
    def set_workload
      @workload = Workload.find(params[:id])
    end
end
