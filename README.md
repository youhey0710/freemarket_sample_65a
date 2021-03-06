## usersテーブル 
|Column|Type|Options|
|------|----|-------|
|profile|references||null: false|
|picture_avatar|references|null :false|
|payment|string|null: false|
|password||string|null: false|
|nickname|string|null: false|
|last_name|string|null: false|
|last_name_reading|string|null: false|
|first_name|string|null: false|
|first_name_reading|string|null: false|
|have_points|string|null: false|
|e-mails|string|null: false|
|birthday|date|null: false|

### Assocition

- has_many :products
- has_many :reviews
- has_many :points
- has_many :credits
- has_many :messages
- has_many :trades
- has_one :address
- has_many :comments

## productsテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|null: false|foreign_key: true|
|trade|references|null: false|
|title|string|null: false|
|size|references|null: false|foreign_key: true|
|shipping_id|string|null: false|
|ship_period|timestamp|null: false|
|ship_method|string|null: false|
|ship_area|string|null: false|
|price|string|null: false|
|likes_count|string|null: false|
|detail|string|null: false|
|condition|string|null: false|
|category|references|null: false|
|brand|references|foreign_key: true|

### Assocition

 - belong_to :user
 - belong_to :trade
 - belong_to :categorie
 - belong_to :brand
 - has_many :images
 - has_many :reviews
 - has_many :comments

### tradesテーブル

|Column|Type|Options|
|------|----|-------|

|vender|references|null: false|foreign_key: true|
|product|references|null: false|foreign_key: true|
|customer|references|null: false|foreign_key: true|

### Association

- belong_to :user
- belong_to :product

##  likesテーブル

|Columm|Type|Options|
|------|----|-------|
|user|references|null: false|foreign_key: true|
|product|references|null: false|foreign_key: true|

### Association

 - belong_to :user
 - belong_to :prodct

## reviewsテーブル

|Columm|Type|Options|
|------|----|-------|
|trade|references|null: false|foreign_key: true|
|reviewer|references|null: false|foreign_key: true|
|reviewed|references|null: false|foreign_key: true|
|review|string|null: false|
|rate|string|null: false|

### Association

 - belong_to :user
 - belong_to :product

## addressテーブル

|Columm|Type|Options|
|------|----|-------|
|tell_num|string|null: false|
|post_code|string|null: false|
|prefecture_name|string|null: false|
|cities_name|string|null: false|
|building_name|string|null: false|
|address_num|string|null: false|
|user|references|null: false|foreign_key: true|

### Association

 - belong_to :user

## pointsテーブル

|Columm|Type|Options|
|------|----|-------|
|user|references|null: false|foreign_key: true|
|point|string|null: false|

### Association

 - belong_to :user

## imagesテーブル

|Columm|Type|Options|
|------|----|-------|
|product|references|null: false|foreign_key: true|
|image_url|string|null: false|

### Association

 - belong_to :product

## commentsテーブル

|Columm|Type|Options|
|------|----|-------|
|review|references|null: false|foreign_key: true|
|comment|string|null: false|
|user|references|null: false|foreign_key: true|

### Association

 - belong_to :user
 - belong_to :product

## creditテーブル

|Columm|Type|Options|
|------|----|-------|
|user|references|null: false|foreign_key: true|
|expiration_date|references|null: false|foreign_key: true|
|card_num|references|null: false|foreign_key: true|

### Association

 - belong_to :user

## categoriesテーブル

|Columm|Type|Options|
|------|----|-------|
|category|string|null: false|

### Association

 - has_many :products

## brandsテーブル

|Columm|Type|Options|
|------|----|-------|
|brand|string|null: false|

### Association

 - has_many :products