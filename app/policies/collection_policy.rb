class CollectionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    admin?
  end

  def create?
    admin?
  end

  def available?
    admin?
  end

  def getavailable?
    admin?
  end

  def unavailable?
    admin?
  end

  def getunavailable?
    admin?
  end

  def new?
    admin?
  end

  def update?
    admin?
  end

  def edit?
    admin?
  end

  private

  def admin?
    user.admin == true
  end

end
