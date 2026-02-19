class Participant < ApplicationRecord
  belongs_to :person
  belongs_to :edition

  enum role: { host: 0,  guest: 1,  vip: 2 }
  enum status: { invited: 0, confirmed: 1, cancelled: 2, attended: 3 }
end
