class AddColumnToTrainer < ActiveRecord::Migration[6.0]
  def change
    add_column :trainers, :sports, :string
  end
end
