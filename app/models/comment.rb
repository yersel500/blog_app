class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def self.update_comments_counter(my_post)
    Comment.where(post_id: my_post).count
  end
end
