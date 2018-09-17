class RoomsController < ApplicationController
  def show
    @room = Room.find(params[:id])
    @comment = Comment.new
    @comments = Comment.where(room_id: params[:id]).order('id desc')
    @role = Member.find_by(room_id: params[:id], user_id: cookies[:user_id]).role
  end
end
