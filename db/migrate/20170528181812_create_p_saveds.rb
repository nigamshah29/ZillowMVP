class CreatePSaveds < ActiveRecord::Migration[5.1]
  def change
    create_table :p_saveds do |t|
      t.references :user, foreign_key: true
      t.references :property, foreign_key: true
      t.boolean :favorited
      t.integer :savedsearch_zip
      t.integer :savedsearch_no_bed
      t.float :savedsearch_no_bath
      t.integer :savedsearch_priceMin
      t.integer :savedsearch_priceMax

      t.timestamps
    end
  end
end
