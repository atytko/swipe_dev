class AddColumnsToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :location, :string
    add_column :offers, :skills, :string
    add_column :offers, :benefits, :string
    add_column :offers, :seniority, :string
    add_column :offers, :job_type, :string
    add_column :offers, :contract_type, :string
    add_column :offers, :min_salary, :integer
    add_column :offers, :position, :string
    add_column :offers, :description, :text
    add_reference :offers, :user, foreign_key: {to_table: :users}
  end
end
