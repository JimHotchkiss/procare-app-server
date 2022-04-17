class CreateSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :steps do |t|
      t.belongs_to :repair, foreign_key: true
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
