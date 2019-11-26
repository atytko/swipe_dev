class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :string
    add_column :users, :first_name, :string
    add_column :users, :company_photo, :string
    add_column :users, :user_photo, :string
    add_column :users, :company_name, :string
  end
end
