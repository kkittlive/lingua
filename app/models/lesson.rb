class Lesson < ApplicationRecord
  belongs_to  :teacher, class_name: :user, foreign_key: :teacher_id
  belongs_to  :student, class_name: :user, foreign_key: :student_id
  has_many :reviews
end
