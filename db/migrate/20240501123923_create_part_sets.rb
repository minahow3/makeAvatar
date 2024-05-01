class CreatePartSets < ActiveRecord::Migration[7.0]
  def change
    create_table :part_sets do |t|
      t.references :user, null: false, foreign_key: true
      t.references :part, null: false, foreign_key: true
      t.float :x_position
      t.float :y_position

      t.timestamps
    end
  end
end
