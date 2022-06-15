class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :posts
  has_many :comments
  has_many :likes

  validates :name, presence: true
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def self.three_recent_post(author)
    Post.where(user_id: author).order(updated_at: :DESC).limit(3)
  end

  ROLES = %i[admin default].freeze

  def admin?
    is? :admin
  end

  def is?(requested_role)
    role == requested_role.to_s
  end
end
