class CreateGymBros < ActiveRecord::Migration[6.1]
  def change
    create_table :gymbros do |t|
      t.string :name
      t.integer :weight
      t.integer :height
      t.string :profile
    end
  end
end
