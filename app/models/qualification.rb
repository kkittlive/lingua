class Qualification < ApplicationRecord
  validates_presence_of :title
  has_many :user_qualifications
  has_many :users, through: :user_qualifications
end
