class RemoveFavoriteFromPSaved < ActiveRecord::Migration[5.1]
  def change
    remove_column :p_saveds, :favorited, :boolean
  end
end
