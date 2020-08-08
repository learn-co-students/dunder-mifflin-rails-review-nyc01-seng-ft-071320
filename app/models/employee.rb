class Employee < ApplicationRecord
    belongs_to :dog

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    #validates :dog, numericality: {greater_than: 0, less_than_or_equal_to: 2}
    # validates :employee, uniqueness: {scope: :alias}
    # validates :content, :rating, presence: {message: 'gotta be there'}
    # validates :content, length:  {maximum: 500}

end
