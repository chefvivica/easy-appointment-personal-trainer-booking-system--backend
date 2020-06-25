class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.integer :phone_number , :default => 123456789
      t.string :email , :default => 'example@email.com'
      t.string :image , :default => 'https://st3.depositphotos.com/2703645/14581/v/450/depositphotos_145810939-stock-illustration-male-user-avatar-icon.jpg'

      t.timestamps
    end
  end
end
