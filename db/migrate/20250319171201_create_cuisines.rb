class CreateCuisines < ActiveRecord::Migration[7.2]
  def change
    create_table :cuisines do |t|
      t.string :name
      t.text :description
      t.string :origin
      t.references :region, null: false, foreign_key: true

      t.timestamps
    end
  end
end
