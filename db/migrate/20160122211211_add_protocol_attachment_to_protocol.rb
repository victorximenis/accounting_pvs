class AddProtocolAttachmentToProtocol < ActiveRecord::Migration
  def change
    add_column :protocols, :protocol_attachment, :string
  end
end
