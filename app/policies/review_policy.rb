class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(is_teacher: false)
    end
  end
  def new?
    @user == record.lesson.student
  end
end
