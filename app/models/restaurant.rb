class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy #if the restaurant is delete it delete also the review
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: {in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false}
end
