class CreateBabies < ActiveRecord::Migration[5.2]
  def change
    create_table :babies do |t|
      t.integer :user_id
      t.string :name
      t.string :feed_time
      t.string :diaper_time
      t.string :hungry_time
      t.string :dirty_time
      t.string :birthdate
      t.integer :hp, :default => 80
      t.integer :feedMissed, :default => 0
      t.integer :diaperMissed, :default => 0
      t.integer :feed, :default => 0
      t.integer :forceFeed, :default => 0
      t.integer :diaper, :default => 0
      t.integer :forceDiaper, :default => 0
      t.integer :feedMoney, :default => 0
      t.integer :diaperMoney, :default => 0
      t.boolean :hungry, :default => false
      t.boolean :poop, :default => false
      t.boolean :happy, :default => false
      t.boolean :initialFeed, :default => false
      t.boolean :initialDiaper, :default => false


      t.timestamps
    end
  end
end
