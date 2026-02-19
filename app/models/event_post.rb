class EventPost < ApplicationRecord
  belongs_to :event
  belongs_to :post
end
