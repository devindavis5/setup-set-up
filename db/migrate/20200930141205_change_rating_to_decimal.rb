class ChangeRatingToDecimal < ActiveRecord::Migration[6.0]
  def change
    change_column :parts, :rating, :decimal, precision: 3, scale: 2
    change_column :parts, :cost, :decimal, precision: 6, scale: 2
  end
end
