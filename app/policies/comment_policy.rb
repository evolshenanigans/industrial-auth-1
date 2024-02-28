class CommentPolicy < ApplicationPolicy
  attr_reader :user, :comment

  def destroy?
    user.present? && (record.author == user || user.admin?)
  end
  def create?
    user.present?
  end
end
