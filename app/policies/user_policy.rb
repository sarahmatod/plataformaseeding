class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    admin?
  end

  private

  def admin?
    user.admin == true
  end

end
