# 概要
家計簿アプリです。シンプルです。

# データベース
## items テーブル
|Column|Type|Options|
|------|----|-------|
|date|date|null: false|
|name|string|null: false|
|category_id|integer|null: false|
|place_id|integer|null: false|
|price|integer|null: false|
|sell_way_num|integer|null: false, limit: 1, unsigned: true|
|comment|string||

### Association
- belongs_to :category
- belongs_to :place

## categories テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many  :items


## places テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :items


