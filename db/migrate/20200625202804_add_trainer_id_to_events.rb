class AddTrainerIdToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :trainer_id, :integer
  end
end
