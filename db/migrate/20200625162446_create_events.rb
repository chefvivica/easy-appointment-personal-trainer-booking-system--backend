class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.integer :trainer_id
      t.string :start
      t.string :end
      t.text :details 
      t.boolean :allDay 
      t.string :event_type

      t.timestamps
    end
  end
end
