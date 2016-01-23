class AddUserToApprovalInfo < ActiveRecord::Migration
  def change
    add_reference :approval_infos, :user, index: true, foreign_key: true
  end
end
