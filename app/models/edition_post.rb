class EditionPost < ApplicationRecord
  belongs_to :edition
  belongs_to :post
end
