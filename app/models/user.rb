class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :likes

  # scope :three_recent_post, ->(name) { where('name = ?', name) }

  def self.three_recent_post(author)
    Post.where(user_id: author).order(updated_at: :DESC).limit(3)
  end
end
