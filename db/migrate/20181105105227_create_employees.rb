class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :Fname
      t.string :Lname
      t.integer :Essn
      t.date :Bdate
      t.text :Address
      t.string :Sex
      t.integer :Salary
      t.integer :Dnumber

      t.timestamps
    end
  end
end
