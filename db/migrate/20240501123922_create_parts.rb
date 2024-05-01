class CreateParts < ActiveRecord::Migration[7.0]
  def change
    create_table :parts do |t|
      t.string :part_type
      t.string :url

      t.timestamps
    end
  end
end
