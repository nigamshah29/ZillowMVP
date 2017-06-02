class RemoveColumnFromPropImages < ActiveRecord::Migration[5.1]
  def change
    remove_column :prop_images, :body
  end
end
