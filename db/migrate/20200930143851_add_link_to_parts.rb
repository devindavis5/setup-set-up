class AddLinkToParts < ActiveRecord::Migration[6.0]
  def change
    add_column :parts, :link, :text
  end
end
