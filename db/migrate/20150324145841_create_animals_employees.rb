class CreateAnimalsEmployees < ActiveRecord::Migration
  def self.up
    create_table :animals_employees, :id => false do |t|
        t.references :animal
        t.references :employee
    end
    add_index :animals_employees, [:animal_id, :employee_id]
    add_index :animals_employees, :employee_id
  end

  def self.down
    drop_table :animals_employees
  end
end
