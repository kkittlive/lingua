class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :lessons, foreign_key: "student_id"
  has_many :commitments, class_name: "Lesson", foreign_key: "teacher_id"
  has_many :reviews, through: :commitments
  has_many :user_qualifications
  has_many :qualifications, through: :user_qualifications
  has_many :language_skills
  has_many :languages, through: :language_skills
  has_one_attached :photo
  validates_presence_of :first_name, :last_name

  def rating
    return false if reviews.count.zero?

    self.reviews.reduce(0) {|acum, review| acum + review.rating } / reviews.count.to_f
  end

end
