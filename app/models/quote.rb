class Quote < ApplicationRecord
  #belongs_to :user
  has_many :comments

  validates :sentence,    presence: true, length: { in: 10..400 }
  validates :true_author, presence: true, length: { in: 3..30 }
  validates :fake_author, presence: true, length: { in: 3..30 }
  validates :source,      presence: true, length: { maximum: 300 }
end
