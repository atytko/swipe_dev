class AddColumnsToFilters < ActiveRecord::Migration[5.2]
  def change
    add_column :filters, :location, :string
    add_column :filters, :skills, :string
    add_column :filters, :benefits, :string
    add_column :filters, :seniority, :string
    add_column :filters, :job_type, :string
    add_column :filters, :contract_type, :string
    add_column :filters, :min_salary, :integer
    add_column :filters, :position, :string
    add_reference :filters, :user, foreign_key: {to_table: :users}
  end
end
