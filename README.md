# README

## usersテーブル
|Column|Type|Option|
|:-------|:------|:--------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
### Association
- has_many: items
- has_one: credit_card
- has_one: profile
- has_one: sending_destination

## profilesテーブル
|Column|Type|Option|
|:-------|:------|:--------|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|birth_year|date|null: false|
|birth_month|date|null: false|
|birth_day|date|null: false|
|introduction|string||
|avatar|string||
### Association
- has_one: user


## credit_cardsテーブル
|Column|Type|Option|
|:-------|:------|:--------|
|user|references|null: false, foreign_key: true|
|card_number|integer|null: false, unique: true|
|card_year|integer|null: false|
|card_month|integer|null: false|
|card_day|integer|null: false|
|security_code|integer|null: false|
### Association
- has_one: user

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
- has_one: user


## itemsテーブル
|Column|Type|Option|
|:-------|:------|:--------|
|name|string|null: false|
|introduction|text|null: false|
|price|integer|null: false|
|item_image|references|null: false, foreign_key: true|
|category|references|null: false, foreign_key: true|
|brand|references|null: false, foreign_key: true|
|item_condition|references|null: false, foreign_key: true|
|shipping_date|references|null:false, foreign_key: true|
|delivery_source_area|references|null: false, foreign_key: true|
|postage|references|null: false, foreign_key: true|
### Association
- belongs_to: user
- has_many: item_images
- belongs_to: categories
- belongs_to: brand
- belongs_to: condition
- belongs_to: shipping_date
- belongs_to: delivery_source_area
- belongs_to: postage

## item_imagesテーブル
|Column|Type|Option|
|:-------|:------|:--------|
|url|string|null: false|
|item|references|null: false, foreign_key: true|
### Association
- belongs_to: item

## categoriesテーブル
|Column|Type|Option|
|:-------|:------|:--------|
|name|string|null: false|
|ancestry|string||
### Association
- has_many: items

## brandsテーブル
|Column|Type|Option|
|:-------|:------|:--------|
|name|string||
### Association
- has_many: item

## item_conditionsテーブル
|Column|Type|Option|
|:-------|:------|:--------|
|condition|string|null: false|
### Association
- has_many: item

## shipping_datesテーブル
|Column|Type|Option|
|:-------|:------|:--------|
|date|string|null: false|
### Association
- has_many: item

## delivery_source_areasテーブル
|Column|Type|Option|
|:-------|:------|:--------|
|area|string|null: false|
### Association
- has_many: items

## postageテーブル
|Column|Type|Option|
|:-------|:------|:--------|
|postage|string|null: false|
### Association
- has_many: item

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
