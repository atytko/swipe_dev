class AddColumnToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :company_name, :string
  end
end
