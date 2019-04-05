class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.integer :baby_id
      t.string :task

      t.timestamps
    end
  end
end
