class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :Pname
      t.integer :Pnumber
      t.string :Plocation
      t.integer :Dnumber
      t.references :department, foregin_key: true

      t.timestamps
    end
  end
end
