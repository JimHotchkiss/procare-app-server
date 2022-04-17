class CreateTaktTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :takt_times do |t|
      t.belongs_to :repair, foreign_key: true
      t.integer :time

      t.timestamps
    end
  end
end
