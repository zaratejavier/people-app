class Person < ApplicationRecord
    # called on an instance @person.full_name
    def full_name
      "#{self.first_name} #{self.last_name}"
     end
end
