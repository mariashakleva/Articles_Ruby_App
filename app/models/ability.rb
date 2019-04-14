# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all # permissions for every user, even if not logged in    
    if user.present?  # additional permissions for logged in users (they can manage their posts)
      can :manage, Article, user_id: user.id 
    end
  end
end
