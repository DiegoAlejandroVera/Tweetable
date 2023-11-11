class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  belongs_to :reply, class_name: "Tweet", optional: true, counter_cache: :replies_count
  has_many :replies, class_name: "Tweet", foreign_key: "reply_id", dependent: :destroy, inverse_of: "reply"

  # validations
  validates :body, presence: true, length: { maximum: 140 }
end
