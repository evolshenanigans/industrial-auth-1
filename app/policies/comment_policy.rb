class CommentPolicy < ApplicationPolicy
  attr_reader :user, :comment

  def destroy?
    user.present?
  end
  def create?
    user.present?
  end
end
