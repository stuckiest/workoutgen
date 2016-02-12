class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.integer :workout_id
      t.integer :exercise_id
      # same as t.references :exercise (notice it's exercise, not exercise_id)
      t.integer :exercise_order
      t.integer :repetition

      t.timestamps null: false
    end
  end
end
