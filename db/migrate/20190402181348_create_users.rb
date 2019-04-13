class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :javascript_time
      t.string :baby_name
      t.integer :selffish
      t.integer :selfless

      t.timestamps
    end
  end
end
