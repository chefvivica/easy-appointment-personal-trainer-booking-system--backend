class AddColumnToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :color, :string
  end
end
