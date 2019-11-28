class AddCompanypToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :company_photo, :string
  end
end
