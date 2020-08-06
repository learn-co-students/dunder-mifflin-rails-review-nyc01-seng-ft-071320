class Employee < ApplicationRecord
    belongs_to :dog
    validates :title, uniqueness: { 
        message: "Please use a unique title"
    }
    validates :alias, uniqueness: { 
        message: "Please use a unique alias"
    }

end
