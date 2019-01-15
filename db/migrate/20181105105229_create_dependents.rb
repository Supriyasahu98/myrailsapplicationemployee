class CreateDependents < ActiveRecord::Migration[5.2]
  def change
    create_table :dependents do |t|
      t.integer :Essn
      t.string :Dependent_name
      t.string :Sex
      t.date :Bdate
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
