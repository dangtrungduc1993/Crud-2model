class Post < ApplicationRecord
  belongs_to :category
  has_rich_text :content
  default_scope -> { order(created_at: :desc) }
  validates :category_id, presence: true
  validates :content, presence: true
  validates :title, presence: true, length: { maximum: 140 }
end
