include MoneyRails::ActionViewExtension

class Product < ActiveRecord::Base

  monetize :price_cents, numericality: true
  mount_uploader :image, ProductImageUploader

  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :category, presence: true

  def display_price
    humanized_money_with_symbol(self.price, { no_cents_if_whole: false })
  end
end
