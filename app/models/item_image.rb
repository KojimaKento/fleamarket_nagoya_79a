class ItemImage < ApplicationRecord
  belongs_to :item
  mount_uploader :src, ItemImageUploader
end
