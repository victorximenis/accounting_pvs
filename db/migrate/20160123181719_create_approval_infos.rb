class CreateApprovalInfos < ActiveRecord::Migration
  def change
    create_table :approval_infos do |t|

      t.timestamps null: false
    end
  end
end
