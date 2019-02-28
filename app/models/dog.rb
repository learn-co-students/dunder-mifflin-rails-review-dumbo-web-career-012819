class Dog < ApplicationRecord
    has_many :employees

    def self.sorted_bitches
        self.all.sort_by do |bih|
            bih.employees.count
        end
    end
end
