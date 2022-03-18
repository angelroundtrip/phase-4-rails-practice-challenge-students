class Student < ApplicationRecord
  belongs_to :instructor

  validates :name, :major, :instructor_id, presence: true
  validates :age, presence: true, numericality: {greater_than_or_equal_to: 18}

end
