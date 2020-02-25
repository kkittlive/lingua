class LanguageSkill < ApplicationRecord
  belongs_to :user
  belongs_to :language
  validates_presence_of :user, :language
end
