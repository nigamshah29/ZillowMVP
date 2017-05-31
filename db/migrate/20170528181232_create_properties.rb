class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.text :description
      t.string :building_type
      t.integer :price
      t.string :city
      t.string :state
      t.string :address
      t.integer :zipcode
      t.date :date_listed
      t.date :year_built
      t.float :longitude
      t.float :latitude
      t.string :status
      t.integer :no_bed
      t.float :no_bath
      t.boolean :garage
      t.string :parking
      t.float :tax
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone

      t.timestamps
    end
  end
end
