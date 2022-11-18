class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy # check if this thoruws error
  validates :name, presence: true
  validates :name, uniqueness: true
end
