class Genre < ApplicationRecord
  belongs_to :category, optional: true
  has_many :menus, dependent: :destroy
end
