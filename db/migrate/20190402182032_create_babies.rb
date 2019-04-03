class CreateBabies < ActiveRecord::Migration[5.2]
  def change
    create_table :babies do |t|
      t.string :name
      t.integer :hp
      t.boolean :hungry
      t.boolean :poop
      t.boolean :happy


      t.timestamps
    end
  end
end
