class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.string :title
      t.text :detail
      t.string :start
      t.string :end
      t.integer :trainer_id

      t.timestamps
    end
  end
end
