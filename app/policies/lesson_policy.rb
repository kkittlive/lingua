class LessonPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    !user.is_teacher
  end

  def update?
    record.teacher == user || record.student == user
  end

  def destroy?
    @user == record.student || @user == record.teacher
  end
end
