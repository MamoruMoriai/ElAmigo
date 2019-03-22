class Take < ApplicationRecord
  belongs_to :sale, optional: true
  belongs_to :menu, optional: true
end
