class ChatRoomsController < ApplicationController
  def index
    @chat_rooms = current_user.swipes.right.map(&:chat_room)
  end

  def show
    @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
  end
end
