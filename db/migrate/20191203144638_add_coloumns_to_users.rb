class AddColoumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :experience, :text
    add_column :users, :about, :text
    add_column :users, :education, :text
  end
end
