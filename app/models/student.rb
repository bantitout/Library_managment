class Student < ApplicationRecord

  has_many :book_ragisters
  has_many :books, through: :book_ragisters
end
