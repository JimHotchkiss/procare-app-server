class CreateCycleTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :cycle_times do |t|
      t.belongs_to :step, foreign_key: true
      t.integer :time

      t.timestamps
    end
  end
end
