class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :users_id
      t.integer :trainer_id
      t.text :content , :default => "No comment yet"
      t.float :rating , :default => 0

      t.timestamps
    end
  end
end
