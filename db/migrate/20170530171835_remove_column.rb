class RemoveColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :properties, :date_listed
  end
end
