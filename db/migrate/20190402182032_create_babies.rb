class CreateBabies < ActiveRecord::Migration[5.2]
  def change
    create_table :babies do |t|
      t.integer :user_id
      t.string :name
      t.string :feed_time
      t.string :diaper_time
      t.string :hungry_time
      t.string :dirty_time
      t.integer :hp, :default => 80
      t.boolean :hungry, :default => false
      t.boolean :poop, :default => false
      t.boolean :happy, :default => false
      t.boolean :initialFeed, :default => false
      t.boolean :initialDiaper, :default => false


      t.timestamps
    end
  end
end
