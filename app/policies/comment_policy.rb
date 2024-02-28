class CommentPolicy < ApplicationPolicy
  def destroy?
    user.present? && (record.author == user || user.admin?)
  end
  def create?
    user.present?
  end
end
