class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :lessons, foreign_key: "student_id"
  has_many :commitments, class_name: "Lesson", foreign_key: "teacher_id"
end
