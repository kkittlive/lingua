class Language < ApplicationRecord
  validates_presence_of :name, :flag
  has_many :language_skills
  has_many :lessons
  has_many :users, through: :language_skills
end
