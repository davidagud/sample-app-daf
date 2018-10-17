class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, User, id: user.id
    can :read, Order, user_id: user.id
    can :read, Product
    if user.admin? # admin abilities
      can :manage, Comment
      can :manage, Product
    end
  end
end
