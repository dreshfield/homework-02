class Book < ApplicationRecord
  validates :title, presence: true
  validates :genre, presence: true
  validates :classification, presence: true, inclusion: { in: Classification.all }
  validates :btype, presence: true, inclusion: { in: %w[Fiction Nonfiction] }
  validates :year, presence: true

  def self.search(query)
    where("title ILIKE ?", "%#{query}")
  end
end