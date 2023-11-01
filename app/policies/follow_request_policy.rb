class FollowRequestPolicy < ApplicationPolicy
  attr_reader :follow_request, :user
  def initialize(user, follow_request)
    @user = user
    @follow_request = follow_request

  end
  def create?
    true
  end
  def destroy?
    follow_request.sender == user
  end
end
