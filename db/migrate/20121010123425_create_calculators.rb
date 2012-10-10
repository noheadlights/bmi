class CreateCalculators < ActiveRecord::Migration
  def change
    create_table :calculators do |t|
      t.string :name
      t.integer :age
      t.float :weight
      t.float :size

      t.timestamps
    end
  end
end
