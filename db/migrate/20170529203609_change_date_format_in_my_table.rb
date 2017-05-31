class ChangeDateFormatInMyTable < ActiveRecord::Migration[5.1]
  def up
      change_column :properties, :year_built, :datetime
    end

    def down
      change_column :properties, :year_built, :date
    end

  end
