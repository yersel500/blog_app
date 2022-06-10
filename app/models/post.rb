class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def self.post_counter(author)
    Post.where(user_id: author).count
  end

  def self.recent_comments(my_post)
    Comment.where(post_id: my_post).order(created_at: :DESC).limit(5)
  end
end
