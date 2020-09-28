class AddColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :parts, :image_url, :text
  end
end
