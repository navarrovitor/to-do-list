class Item < ApplicationRecord
  belongs_to :list
  validates :title, length: {minimum: 5}
end
