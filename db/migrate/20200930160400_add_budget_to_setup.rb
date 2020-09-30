class AddBudgetToSetup < ActiveRecord::Migration[6.0]
  def change
    add_column :setups, :budget, :integer
    add_column :setups, :use, :string
    add_column :setups, :size, :string
    add_column :setups, :color, :boolean
  end
end
