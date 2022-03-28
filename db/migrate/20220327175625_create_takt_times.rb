class CreateTaktTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :takt_times do |t|
      t.integer :time
      t.integer :repair_id

      t.timestamps
    end
  end
end
