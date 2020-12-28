class Student < ApplicationRecord

  has_many :studentbooks
  has_many :books, through: :studentbooks
end
