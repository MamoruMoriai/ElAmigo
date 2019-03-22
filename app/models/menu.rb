class Menu < ApplicationRecord
  has_many :takes, dependent: :destroy
  belongs_to :category, optional: true
  belongs_to :genre, optional: true
end
