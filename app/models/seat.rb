class Seat < ApplicationRecord
  has_many :sales, dependent: :destroy
end
