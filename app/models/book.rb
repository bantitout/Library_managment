class Book < ApplicationRecord
  belongs_to :author
  belongs_to :library
  has_many :book_ragisters
  has_many :students, through: :book_ragisters
end
