class BookingPost < ApplicationRecord
  belongs_to :booking
  belongs_to :post
end
