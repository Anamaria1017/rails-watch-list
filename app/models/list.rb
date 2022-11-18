class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_one_attached :photo
  has_many :movies, through: :bookmarks, dependent: :destroy # check if this thoruws error
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :photo, presence: true
end
