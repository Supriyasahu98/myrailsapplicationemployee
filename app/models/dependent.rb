class Dependent < ApplicationRecord
has_many :employee, class_name: "Dependent", foreign_key: "Essn"
end