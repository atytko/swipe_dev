class AddSwipeToChatRooms < ActiveRecord::Migration[5.2]
  def change
    add_reference :chat_rooms, :swipe, foreign_key: true
  end
end
