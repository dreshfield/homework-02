class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true
  validates :classification, presence: true, inclusion: { in: Classifications['classifications'] }
  validates :btype, presence: true, inclusion: { in: %w[Fiction Nonfiction] }
  validates :year, presence: true
end