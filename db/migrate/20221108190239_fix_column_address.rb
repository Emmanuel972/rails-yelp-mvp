class FixColumnAddress < ActiveRecord::Migration[7.0]
  def change
    rename_column :restaurants, :adresse, :address
  end
end
