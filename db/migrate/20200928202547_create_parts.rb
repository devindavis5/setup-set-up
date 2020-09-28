class CreateParts < ActiveRecord::Migration[6.0]
  def change
    create_table :parts do |t|
      t.string :name
      t.integer :cost
      t.integer :rating
      t.text :description
      t.text :amazon_url
      t.integer :category_id

      t.timestamps
    end
  end
end
