class Project < ApplicationRecord
belongs_to :department
has_many :employee, :through => :works_on, class_name: "project",
forgien_key: "Dnumber"
end
