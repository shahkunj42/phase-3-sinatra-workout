class CreateGymBros < ActiveRecord::Migration[6.1]
  def change
    create_table :grmbros do |t|
      t.string :name
    end
  end
end
