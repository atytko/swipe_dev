class RemoveNameFromChatRooms < ActiveRecord::Migration[5.2]
  def change
    remove_column :chat_rooms, :name
  end
end
