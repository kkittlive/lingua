class UserQualification < ApplicationRecord
  belongs_to :user
  belongs_to :qualification
  validates_presence_of :user, :qualification
end
