class Dog < ApplicationRecord
    has_many :employees

    def self.most_popular_dog
        self.all.sort_by{|dog| -dog.employees.count}    
    end
end
