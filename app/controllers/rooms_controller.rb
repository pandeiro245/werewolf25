class RoomsController < ApplicationController
  def show
    @room = Room.find(params[:id])
    @member = @room.member(current_user)
    @workload = Workload.where(user_id: current_user.id, done: true).last
    redirect_to :root unless @workload.can_chat?
    @comment = Comment.new
    @comments = Comment.where(room_id: params[:id]).order('id desc')
  end
end
