class Book < ApplicationRecord
  # Disable STI so we can use 'type' column
  self.inheritance_column = :_type_disabled
  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true
  validates :classification, presence: true, inclusion: { in: Classifications['classifications']}
  validates :type, presence: true, inclusion: { in: %w[Fiction Nonfiction] }
  validates :year, presence: true
end
