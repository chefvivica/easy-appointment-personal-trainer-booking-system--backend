class ChangeColumnFromEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :eventColor, :string
    add_column :events, :color, :string
  end
end
