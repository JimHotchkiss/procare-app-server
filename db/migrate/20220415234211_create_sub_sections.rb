class CreateSubSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_sections do |t|
      t.belongs_to :section, foreign_key: true
      t.string :title
      t.string :description
      t.integer :cycle_time

      t.timestamps
    end
  end
end
