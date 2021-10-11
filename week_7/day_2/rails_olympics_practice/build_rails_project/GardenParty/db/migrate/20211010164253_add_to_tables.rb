class AddToTables < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string, null: false
    add_index :users, :username, unique: true
    add_column :gardens, :name, :string, null: false
    add_column :gardens, :size, :integer, null: false
    add_column :gardens, :garden_owner_id, :integer
    add_index :gardens, :garden_owner_id
    add_column :flowers, :flower_type, :string, null: false
    add_column :flowers, :gardener_id, :integer
    add_index :flowers, :gardener_id
    add_column :flowers, :garden_id, :integer
    add_index :flowers, :garden_id
  end
end
