class RemovePropertyFromPsaved < ActiveRecord::Migration[5.1]
  def change
    remove_column :p_saveds, :property_id

  end
end
