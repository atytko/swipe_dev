class AddColumnsToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :content, :string
    add_reference :messages, :user, foreign_key: {to_table: :users}
    add_reference :messages, :chat_room, foreign_key: {to_table: :chat_rooms}
  end

end

