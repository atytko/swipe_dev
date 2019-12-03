class ChatRoom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :swipe

  def name
    swipe.offer.company_name
  end

  def c_photo
    swipe.offer.company_photo
  end
end
