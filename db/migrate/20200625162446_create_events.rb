class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.integer :tainer_id
      t.string :start
      t.string :end
      t.text :details 
      t.boolean :allDay 
      t.string :type

      t.timestamps
    end
  end
end
