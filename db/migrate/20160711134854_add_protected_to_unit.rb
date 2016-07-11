class AddProtectedToUnit < ActiveRecord::Migration
  def change
    add_column :units, :protected, :boolean, default: false
  end
end
