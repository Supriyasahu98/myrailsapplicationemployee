class Employee < ApplicationRecord
  has_one :department
	has_many :dependent

	has_many :project, :through => :works_on
end
