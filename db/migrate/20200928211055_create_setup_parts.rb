class CreateSetupParts < ActiveRecord::Migration[6.0]
  def change
    create_table :setup_parts do |t|
      t.integer :setup_id
      t.integer :part_id

      t.timestamps
    end
  end
end
