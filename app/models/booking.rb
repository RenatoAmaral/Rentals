class Booking < ApplicationRecord
  belongs_to :profile
  belongs_to :product
end
