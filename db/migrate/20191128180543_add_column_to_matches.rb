class AddColumnToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :result, :boolean
  end
end
