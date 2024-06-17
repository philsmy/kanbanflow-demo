class CreateVisualSignals < ActiveRecord::Migration[7.1]
  def change
    create_table :visual_signals do |t|
      t.string :title
      t.text :description
      t.references :column, null: false, foreign_key: true

      t.timestamps
    end
  end
end
