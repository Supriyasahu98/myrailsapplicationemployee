class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :Dname
      t.integer :Dnumber
      t.references :employee, foreign_key:true

      t.timestamps
    end
  end
end
