class Lesson < ApplicationRecord
  belongs_to  :teacher, class_name: "User"
  belongs_to  :student, class_name: "User"
  belongs_to  :language
  has_many :reviews
  STATE = %w[confirmed pending completed cancelled]
  validates :status, inclusion: {in: STATE }
  validates_presence_of :date, :location, :teacher, :student, :language
end
