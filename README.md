# アプリ名
SHAREPUT

## 概要実装機能
プログラミング初学者向けの情報共有型アウトプットアプリ

## 概要
ペルソナ：プログラミング初学者

課題
- 初学者間の横のつながりが少ない
- 既存のツールでは様々なユーザーが存在するため発信がしにくい
- 同じ目的を持つ人たち専門のコミュニティがない

これらの課題からプログラミング初学者が気軽に情報共有とアウトプットができるアプリを作成することを目的としました。

## 実装機能
- ユーザー管理機能
- トピック投稿・削除機能
- アウトプット投稿・削除機能

-実装予定-
- いいね機能
- ユーザーページ機能

## 本番環境
- GitHub: https://github.com/yuwki/shareput
- デプロイ先: https://shareput-81.herokuapp.com


## DEMO
- トップ画面
![top画面jpg](https://user-images.githubusercontent.com/68524338/94360823-387d9180-00eb-11eb-8d02-45ffeeea2675.jpg)

- 投稿画面
<img width="1067" alt="投稿画面" src="https://user-images.githubusercontent.com/68524338/94361058-9f4f7a80-00ec-11eb-9712-294f9b0b4f27.png">

# テーブル設計

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

<img width="609" alt="スクリーンショット 2020-08-21 12 39 05" src="https://user-images.githubusercontent.com/68524338/94361226-c5294f00-00ed-11eb-84b2-e091a542a45d.png">

## 画面遷移図
<img width="574" alt="スクリーンショット 2020-08-21 14 47 18" src="https://user-images.githubusercontent.com/68524338/94361227-c6f31280-00ed-11eb-9843-506b8f3867be.png">
