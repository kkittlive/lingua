class Review < ApplicationRecord
  belongs_to :lesson
  validates_presence_of :content, :rating, :lesson
end
