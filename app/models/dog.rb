class Dog < ApplicationRecord
    has_many :employees

    def employee_count
        employees.count
    end
end
