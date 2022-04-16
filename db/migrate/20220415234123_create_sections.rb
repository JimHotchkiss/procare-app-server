class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.belongs_to :instruction, foreign_key: true
      t.string :title
      t.string :description
      t.integer :cycle_time
      t.timestamps
    end
  end
end
