class AddDefaultFlagToParts < ActiveRecord::Migration[7.0]
  def change
    add_column :parts, :default_flag, :boolean,default: false
  end
end
