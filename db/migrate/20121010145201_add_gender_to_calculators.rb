class AddGenderToCalculators < ActiveRecord::Migration
  def change
    add_column :calculators, :gender, :string
  end
end
