class Category < ApplicationRecord
  has_many :genres, dependent: :destroy
  has_many :menus, dependent: :destroy
end
