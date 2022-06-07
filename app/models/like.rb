class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def self.update_likes_counter(my_comment)
    Like.where(comment_id: my_comment).count
  end
end
