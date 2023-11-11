class AddParentToTweet < ActiveRecord::Migration[7.0]
  def change
    add_reference :tweets, :reply, foreign_key: {to_table: :tweets}
  end
end
