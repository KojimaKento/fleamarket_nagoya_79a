class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :condition
  belongs_to_active_hash :shipping_date
  belongs_to_active_hash :delivery_source_area
  belongs_to_active_hash :postage

  
  belongs_to :buyer, class_name: "User", foreign_key: "buyer_id", optional: true
  belongs_to :seller, class_name: "User", foreign_key: "seller_id"
  
  validates :name, presence: true
  validates :introduction, presence: true
  validates :price, presence: true
  validates :category_id, numericality: { other_than: 1 }
  validates :condition_id, numericality: { other_than: 1 } 
  validates :shipping_date_id, numericality: { other_than: 1 }
  validates :delivery_source_area_id, numericality: { other_than: 1 }
  validates :postage_id, numericality: { other_than: 1 }
end
