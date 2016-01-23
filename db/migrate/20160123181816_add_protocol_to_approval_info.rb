class AddProtocolToApprovalInfo < ActiveRecord::Migration
  def change
    add_reference :approval_infos, :protocol, index: true, foreign_key: true
  end
end
