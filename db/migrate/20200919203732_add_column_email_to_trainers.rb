class AddColumnEmailToTrainers < ActiveRecord::Migration[6.0]
  def change
    add_column :trainers, :email, :string  
  end
end
