class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_many :categories, through: :restaurantcategories

  validates :name,    presence: true
  validates :address, presence: true
  validates :city,    presence: true
  validates :state,   presence: true
  validates :zip,     presence: true, length: { is: 5 }, numericality: true
end
