class CreateRepairs < ActiveRecord::Migration[7.0]
  def change
    create_table :repairs do |t|
      t.belongs_to :instruction, foreign_key: true
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
