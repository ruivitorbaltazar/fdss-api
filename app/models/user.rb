class User < ApplicationRecord
  belongs_to :person

  enum role: { admin: 0, regular: 1 }
  enum status: { invited: 0, confirmed: 1, declined: 2 }
end
