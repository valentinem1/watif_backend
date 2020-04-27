class Review < ApplicationRecord
  # declare relationship with user and item
  # it is very declarative that the review posted belong to the user instance
  # but also belongs to the item instance that it has been posted on.
  belongs_to :user
  belongs_to :item
end