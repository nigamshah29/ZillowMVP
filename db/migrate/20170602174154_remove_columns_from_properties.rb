class RemoveColumnsFromProperties < ActiveRecord::Migration[5.1]
  def change
    remove_column :properties, :city
    remove_column :properties, :state
    remove_column :properties, :image
    
  end
end
