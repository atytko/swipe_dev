class Match < ApplicationRecord
  belongs_to :offer
  belongs_to :swipe
  belongs_to :user
end
