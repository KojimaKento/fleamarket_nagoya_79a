class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :condition
  belongs_to_active_hash :shipping_date
  belongs_to_active_hash :delivery_source_area
  belongs_to_active_hash :postage

  has_many item_images
  
  belongs_to :user
  
  validates :category_id, numericality: { other_than: 1 } 
  validates :condition_id, numericality: { other_than: 1 } 
  validates :shipping_date_id, numericality: { other_than: 1 } 
  validates :delivery_source_area_id, numericality: { other_than: 1 } 
  validates :postage_id, numericality: { other_than: 1 } 
end
