class Lesson < ApplicationRecord
  belongs_to  :teacher, class_name: "User"
  belongs_to  :student, class_name: "User"
  has_many :reviews
  validates :status, inclusion: {in: %w[pending confirmed completed canceled]}
  validates_presence_of :date, :location, :teacher, :student
end
