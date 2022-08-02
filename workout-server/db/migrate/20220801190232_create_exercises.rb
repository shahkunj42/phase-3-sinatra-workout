class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :exercise
      t.integer :musclegroup_id
      t.integer :weight
      t.string :img
      t.string :description
      t.boolean :completed_workout
    end
  end
end
