class AddNameToUnit < ActiveRecord::Migration
  def change
    add_column :units, :name, :string, unique: true
  end
end
