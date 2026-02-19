class Edition < ApplicationRecord
  belongs_to :event
  belongs_to :meeting_location
  belongs_to :user
end
