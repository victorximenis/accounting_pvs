class AddApproverToProtocols < ActiveRecord::Migration
  def change
    add_reference :protocols, :user, index: true, foreign_key: true
  end
end
