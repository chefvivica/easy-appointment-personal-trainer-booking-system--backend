class RemoveTainerIdFromEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :tainer_id, :integer
  end
end
