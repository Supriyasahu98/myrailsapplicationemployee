class CreateDeptLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :dept_locations do |t|
      t.integer :Dnumber
      t.string :Dlocation
      t.references :department, foregin_key: true

      t.timestamps
    end
  end
end
