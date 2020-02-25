class Lesson < ApplicationRecord
  belongs_to  :teacher, class_name: "User"
  belongs_to  :student, class_name: "User"
  has_many :reviews
  has_one :teacher_review, class_name: "Review", foreign_key: "teacher_id"
  validates_presence_of :date, :location, :teacher, :student
end
