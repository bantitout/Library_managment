class Student < ApplicationRecord

  has_one :user
  accepts_nested_attributes_for :user
  has_many :book_ragisters
  has_many :books, through: :book_ragisters
end
