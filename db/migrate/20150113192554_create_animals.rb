class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :age
      t.string :breed
      t.string :color

      t.timestamps null: false
    end
  end
end
