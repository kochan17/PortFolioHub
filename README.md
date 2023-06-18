# DB設計

## Users Table

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| id              | bigint | primary key |
| username        | string | null: false |
| email           | string | null: false |
| password_digest | string | null: false |

## Portfolios Table

| Column      | Type   | Options                        |
| ----------- | ------ | ------------------------------ |
| id          | bigint | primary key                    |
| title       | string | null: false                    |
| description | text   | null: false                    |
| url         | string | null: false                    |
| user_id     | bigint | null: false, foreign_key: true |

### Association

- Users has_many :portfolios
- Portfolios belongs_to :user
