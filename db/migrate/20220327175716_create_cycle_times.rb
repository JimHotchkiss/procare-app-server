class CreateCycleTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :cycle_times do |t|
      t.integer :time
      t.integer :takt_time_id

      t.timestamps
    end
  end
end
