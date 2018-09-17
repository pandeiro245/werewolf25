class RoomsController < ApplicationController
  def show
    @comment = Comment.new
    @comments = Comment.where(room_id: params[:id]).order('id desc')
  end
end
