class ChangeColumnsFromPsaveds < ActiveRecord::Migration[5.1]
  def change
    remove_column :p_saveds, :savedsearch_zip
    remove_column :p_saveds, :savedsearch_no_bed
    remove_column :p_saveds, :savedsearch_no_bath
    remove_column :p_saveds, :savedsearch_priceMin
    remove_column :p_saveds, :savedsearch_priceMax

    add_column :p_saveds, :query, :string

  end
end
