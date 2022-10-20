class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.admin == true

    can :add, Car
    can :delete, Car
  end
end
