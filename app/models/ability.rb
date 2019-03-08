class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    # user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    # =>

    can :manage, :all

      # if user.present?
      #   can :manage, :all, user_id: user.id
      # end
      #
      # if user.role == 'admin'
      #   can :manage, :all
      # elsif user.role == 'moderator'
      #   can :manage, :all
      # elsif user.role == 'user'
      #   can :read, :all
      #   can :manage, User, user_id: user.id
      # else
      #   can :read, :all
      #   cannot :index, User
      # end
  end
end
