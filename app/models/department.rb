class Department < ApplicationRecord
    has_one :project
	has_many :employee, class_name: "Department", foreign_key: "Dnumber"
	has_one :dept_location
end
