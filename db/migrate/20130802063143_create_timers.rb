class CreateTimers < ActiveRecord::Migration
  def change
    create_table :timers do |t|
      t.datetime :start_time
      t.datetime :stop_time
      t.integer :person_id
      t.integer :user_id
      t.string :notes

      t.timestamps
    end
  end
end
