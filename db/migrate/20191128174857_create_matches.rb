class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.references :offer, foreign_key: true
      t.references :swipe, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
