# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_05_105232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.string "Dname"
    t.integer "Dnumber"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_departments_on_employee_id"
  end

  create_table "dependents", force: :cascade do |t|
    t.integer "Essn"
    t.string "Dependent_name"
    t.string "Sex"
    t.date "Bdate"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_dependents_on_employee_id"
  end

  create_table "dept_locations", force: :cascade do |t|
    t.integer "Dnumber"
    t.string "Dlocation"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_dept_locations_on_department_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "Fname"
    t.string "Lname"
    t.integer "Essn"
    t.date "Bdate"
    t.text "Address"
    t.string "Sex"
    t.integer "Salary"
    t.integer "Dnumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "Pname"
    t.integer "Pnumber"
    t.string "Plocation"
    t.integer "Dnumber"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_projects_on_department_id"
  end

  create_table "works_ons", force: :cascade do |t|
    t.integer "Essn"
    t.integer "Pnumber"
    t.time "Hours"
    t.bigint "employee_id"
    t.bigint "projects_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_works_ons_on_employee_id"
    t.index ["projects_id"], name: "index_works_ons_on_projects_id"
  end

  add_foreign_key "departments", "employees"
  add_foreign_key "dependents", "employees"
  add_foreign_key "works_ons", "employees"
  add_foreign_key "works_ons", "projects", column: "projects_id"
end
