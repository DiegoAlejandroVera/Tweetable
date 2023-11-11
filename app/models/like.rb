class Like < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  # validations
  validates :user_id, uniqueness: { scope: :tweet_id, message: 'This tweet has already been liked' }
end
