class Language < ApplicationRecord
  validates_presence_of :name, :url
  has_many :language_skills
  has_many :users, through: :language_skills
end
