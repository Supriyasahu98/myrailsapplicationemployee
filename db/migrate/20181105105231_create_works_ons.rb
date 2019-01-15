class CreateWorksOns < ActiveRecord::Migration[5.2]
  def change
    create_table :works_ons do |t|
      t.integer :Essn
      t.integer :Pnumber
      t.time :Hours
      t.references :employee, foreign_key: true
      t.references :projects,  foreign_key: true

      t.timestamps
    end
  end
end
