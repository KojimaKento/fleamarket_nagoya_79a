# README

## usersテーブル
|Column|Type|Option|
|:-------|:------|:--------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
### Association
- has_many: items, :dependent => :destroy
- has_many: orders
- has_one: credit_card
- has_one: profile
- has_one: sending_destination
- has_many: sold_items, -> { where("buyer_id is not NULL"), foreign_key: "seller_id", class_name: "item"
- has_many :selling_items, -> { where("buyer_id is NULL") }, foreign_key: "seller_id", class_name: "item"
- has_many: bought_items, foreign_key: "buyer_id", class_name: "item"

## profilesテーブル
|Column|Type|Option|
|:-------|:------|:--------|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|birthday|date|null: false|
|introduction|string||
|avatar|string||
### Association
- belongs_to: user


## credit_cardsテーブル
|Column|Type|Option|
|:-------|:------|:--------|
|user|references|null: false, foreign_key: true|
|customer_id|string|null: false|
|card_id|string|null: false|
### Association
- belongs_to: user

## sending_destinationテーブル
|Column|Type|Option|
|:-------|:------|:--------|
|user|references|null: false, foreign_key: true|
|post_code|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|address|string|null: false|
|apartment|string||
### Association
- belongs_to: user


## itemsテーブル
|Column|Type|Option|
|:-------|:------|:--------|
|name|string|null: false|
|introduction|text|null: false|
|price|integer|null: false|
|seller|references|null: false, foreign_key: true|
|buyer|references|foreign_key: true|
|category_id|integer|null: false|
|brand_id|integer|null: false|
|condition_id|integer|null: false|
|shipping_date_id|integer|null: false|
|delivery_source_area_id|integer|null: false|
|postage_id|integer|null: false|

### Association
- has_many: item_images
- belongs_to_active_hash: category
- belongs_to_active_hash: brand
- belongs_to_active_hash: condition
- belongs_to_active_hash: shipping_date
- belongs_to_active_hash: delivery_source_area
- belongs_to_active_hash: postage
- belongs_to :seller, class_name: "user"
- belongs_to :buyer, class_name: "user"

## item_imagesテーブル
|Column|Type|Option|
|:-------|:------|:--------|
|url|string|null: false|
|item|references|null: false, foreign_key: true|
### Association
- belongs_to: item

## ordersテーブル
|Column|Type|Option|
|:-------|:------|:--------|
|user|references|null: false, foreign_key: true|
|item|references|null: false, foreign_key: true|
### Association
- belongs_to: user
- belongs_to: item





This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
