class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :replies, class_name: "Reply", foreign_key: "reply_id", dependent: :destroy, inverse_of: "reply"
  belongs_to :reply, class_name: "Reply", optional: true

  # validations
  validates :body, presence: true, length: { maximum: 140 }
end
