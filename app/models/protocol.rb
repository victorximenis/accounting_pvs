require 'carrierwave/orm/activerecord'

class Protocol < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true

  belongs_to :user
  has_one :approval_info

  mount_uploader :protocol_attachment, ProtocolAttachmentUploader

  def before_save(protocol)
    protocol.approved = false if protocol.approved == nil
  end
end
