class Author < ApplicationRecord
  validates :first_name, presence: true
  validates :age, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
