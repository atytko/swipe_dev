class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :location, :string
    add_column :users, :skills, :string
    add_column :users, :benefits, :string
    add_column :users, :seniority, :string
    add_column :users, :job_type, :string
    add_column :users, :contract_type, :string
    add_column :users, :min_salary, :integer
    add_column :users, :position, :string
  end
end
