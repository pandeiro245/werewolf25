class CommentsController < ApplicationController
  def create
    room = Room.last # TODO
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.room = room
    @comment.save
    redirect_to room_path(room)
  end

    def comment_params
      params.require(:comment).permit(:body)
    end
end
