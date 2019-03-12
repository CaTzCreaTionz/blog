class Article < ApplicationRecord
  validates :title, presence: true
  has_many :comments


  def self.search(search_term)
    Article.where("title LIKE ?", "%#{search_term}%")
  end

end
