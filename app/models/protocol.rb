class Protocol < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true

  belongs_to :user

  def before_save(protocol)
    protocol.approved = false if protocol.approved == nil
  end
end
