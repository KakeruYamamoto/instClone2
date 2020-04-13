# README

# DIC課題(3/6)：インスタグラムクローン
## Heroku：

## ホーム画面
<img src="/db/fixtures/.png" width="650px">

## バージョン
- Ruby 2.6.3
- Rails 5.2.3

## 機能一覧
- [ ] 文章と画像の投稿機能
  - [ ] 投稿CRUD機能（一覧、作成、詳細、更新、削除）
- [ ] ユーザー機能
  - [ ] 投稿CRUD機能（一覧、作成、詳細、更新、削除）
- [ ] お問い合わせ機能
  - [ ] CRUD機能（一覧、作成、詳細、更新、削除）
- [ ] メール機能
- [ ] お気に入り機能
- [ ] コメント機能
- [ ] ログイン機能
- [ ] ゲストログイン機能

## 課題要件
- Ruby on Railsを使ったアプリケーションであること
- HTML,CSS,bootstrapを使用して、現実のInstagramに似せたデザインにすること（任意）
- pictureの投稿・投稿確認・編集・一覧表示・詳細画面・削除機能があること（CRUD機能）
- userのプロフィール画像が登録・編集できること
- 他人の投稿・プロフィールが編集できないように、controllerでアクセス制限をかけ、さらにviewではボタンを非表示にすること。
- ログイン機能があること（deviseなどのgemは使わないこと）
- UserとPictureをひも付けて誰がPictureを投稿したか分かるようにすること
- 画像と文章が投稿できるようにすること
- pictureをお気に入りし、お気に入りのpictureの一覧画面を、新しいルーティングのページで作成すること
- CSS、JavaScript、Helperのファイルをrails g コマンドで自動生成しない設定を記述して、これらの余分なファイルができないようにすること
- Githubにソースコードを送信し、そのリポジトリのURLを提出すること
- Herokuにアップロードしてある状態であること
- 404,500のエラーページを実装すること
- Userに関する50件分のseedデータを投入できるコードを用意すること
- .envファイルを作成し、それをGitに上げないようにする設定をしておくこと
- 辞書ファイルで、エラーメッセージやモデル名などの日本語化がされていること
- 変数名やアソシエーション名は具体的で、一目見て概ね理解できる名前にすること
- Gitのコミットメッセージが、一目見てそのコミットで何をしたかがわかるものであること
- 一つの機能を作成したら、一つのコミットをするようにすること
- インデントは半角スペース二つで揃えること
- Gemfileはコメント行をあらかじめ消しておくこと
- 改行は意味のある単位で行なった方がみやすいため、そうすること
- 意味のない空行は消しておく
- ロケット記法は使わないこと
- 変数やアソシエーション名は、機能に関連した名前づけを心がけ、good_answersのようにスネークケースできちんと単語を分けること
- 変数やアソシエーション名に省略した名称は基本的に使わない
- privateより下の行はprivateと同じレベルのインデントにする
- updateなどの記述の際、バリデーションが発火した時の処理も考慮しておくこと。（レンダリングするviewが見つけられなくてエラーになったりしないように注意する）
- タイムゾーンの設定を日本にしておくこと
- letter_opener_web・bootstrap, jquery-rails, デバック関係以外のgemを使用していないこと

## How to Start

```
1. $ git clone https://github.com/KakeruYamamoto/instClone2.git (クローン生成)
2. $ cd instClone (作成後、対象のディレクトリから抜けてしまうので、そのディレクトリ移動)
3. $ bundle install
4. $ yarn install
5. $ rails db:create (データベースの生成)
6. $ rails db:migrate （マイグレーションファイルの実行）
7.  #config/initializers/locale.rb内の"I18n"の二行をコメントアウト（8.のコマンド終了後、戻す）
8. $ rails db:seed (シードデータの生成)
9. $ rails s  
```
