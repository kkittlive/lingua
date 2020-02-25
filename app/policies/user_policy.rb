class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(is_teacher: true)
    end
  end

  def show?
    record.is_teacher
  end

  def dashboard?
    true
  end
end
