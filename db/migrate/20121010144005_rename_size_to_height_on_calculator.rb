class RenameSizeToHeightOnCalculator < ActiveRecord::Migration
  def up
    rename_column :calculators, :size, :height
  end

  def down
    rename_column :calculators, :height, :size
  end
end
