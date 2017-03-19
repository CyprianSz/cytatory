class User < ApplicationRecord
  has_many :quotes
  has_many :comments
end
