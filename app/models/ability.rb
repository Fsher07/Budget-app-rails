class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :manage, Operation
    can :manage, Category
  end
end
