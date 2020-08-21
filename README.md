# SHAREPUTテーブル設計

## users テーブル
| Column            | Type   | Options                   |
| ----------------  | ------ | ------------------------- |
| nickname          | string | null: false               |
| mail              | string | null: false, unique: true |
| password          | string | null: false               |

### Association
- has_many :topics
- has_many :posts


## topics テーブル
| Column            | Type       | Options                   |
| ----------------  | ---------- | ------------------------- |
| title             | string     | null: false               |
| user              | references | null: false, FK:true      |

### Association
- belongs_to :user
- has_many :posts


## posts テーブル
| Column            | Type      | Options                  |
| ----------------  | --------- | ------------------------ |
| text              | string    | null: false              |
| user              | reference | null: false, FK:true     |
| topic             | reference | null: false, FK:true     |

### Association
- belongs_to :user
- belongs_to :topic

