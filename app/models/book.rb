class Book < ApplicationRecord
  belongs_to :author
  belongs_to :library
  has_many :studentbooks
  has_many :students, through: :studentbooks
end
