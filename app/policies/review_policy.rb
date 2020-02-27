class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(is_teacher: false)
    end
  end

  def create?
    @user == record.lesson.student && record.lesson.reviews.count == 0
  end
end
