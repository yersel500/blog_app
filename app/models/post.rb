class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes

  def self.post_counter(author)
    Post.where(user_id: author).count
  end

  def self.recent_comments(my_post)
    Comment.where(post_id: my_post).order(created_at: :DESC).limit(5)
  end
end
