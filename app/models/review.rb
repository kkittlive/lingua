class Review < ApplicationRecord
  belongs_to :lesson
  validates :rating, inclusion: {in: [0, 1, 2, 3, 4, 5]}
  validates_presence_of :content, :rating, :lesson
end
