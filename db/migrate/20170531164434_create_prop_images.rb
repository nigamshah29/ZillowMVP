class CreatePropImages < ActiveRecord::Migration[5.1]
  def change
    create_table :prop_images do |t|
      t.string :title
      t.text :body
      t.string :image
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
