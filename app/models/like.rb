class Like < ApplicationRecord
  belongs_to :user
  belongs_to :tweet, counter_cache: :likes_count

  # validations
  validates :user_id, uniqueness: { scope: :tweet_id, message: 'This tweet has already been liked' }
end
