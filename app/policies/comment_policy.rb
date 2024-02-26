class CommentPolicy < ApplicationPolicy
  def destroy?
    user.admin? or record.user == user
  end
end

