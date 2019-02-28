class Dog < ApplicationRecord
  has_many :employees

  def self.sort_dog
    Dog.all.sort_by do |dog|
      dog.employees.length
    end.reverse
  end

end
