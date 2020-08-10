class Dog < ApplicationRecord
    has_many :employees


    #def sorted_dogs_actual(array)
        #array.sort_by do |dog|
            #dog.employees.count
        #end
    #end
end
