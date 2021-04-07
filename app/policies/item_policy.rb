class ItemPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def destroy?
    admin?
  end

  def show?
    admin?
  end

    private

  def admin?
    user.admin == true
  end

end
