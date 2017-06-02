class RemoveFavoriteFromFavorite < ActiveRecord::Migration[5.1]
  def change
    remove_column :favorites, :favorite, :boolean
  end
end
