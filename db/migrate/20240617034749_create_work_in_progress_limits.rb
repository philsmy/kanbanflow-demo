class CreateWorkInProgressLimits < ActiveRecord::Migration[7.1]
  def change
    create_table :work_in_progress_limits do |t|
      t.integer :limit
      t.references :column, null: false, foreign_key: true

      t.timestamps
    end
  end
end
