# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :games

## games テーブル

| Column    | Type       | Options           |
| --------- | ---------- | ----------------- |
| name      | string     | null: false       |
| info      | text       | null: false       |
| good      | text       | null: false       |
| bad       | text       | null: false       |
| review_id | integer    | null: false       |
| user      | references | foreign_key: true |

### Association

- belongs_to :user

