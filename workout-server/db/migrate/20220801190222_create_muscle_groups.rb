class CreateMuscleGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :musclegroups do |t|
      t.string :musclegroup
      t.string :gymbro_id
      end
  end
end
