class Sale < ApplicationRecord
  belongs_to :seat, optional: true
  has_many :takes, dependent: :destroy
end
