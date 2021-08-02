# notify_discord

discordの[webhook](https://support.discord.com/hc/ja/articles/228383668-%E3%82%BF%E3%82%A4%E3%83%88%E3%83%AB-Webhooks%E3%81%B8%E3%81%AE%E5%BA%8F%E7%AB%A0)を利用してメッセージをpostするrubyスクリプト

## 事前準備

### webhookの作成
サーバにwebhookを作成する必要があります。

詳細は[こちら](https://support.discord.com/hc/ja/articles/228383668-%E3%82%BF%E3%82%A4%E3%83%88%E3%83%AB-Webhooks%E3%81%B8%E3%81%AE%E5%BA%8F%E7%AB%A0)を参照してください。

### リポジトリのclone
```git
git clone https://github.com/kazooto/notify_discord.git
```

### configファイルの設定

notify_discord.rbと同じ場所に`notify_discord.yml`というyamlファイルが存在しています。

yamlファイルの各項目を埋めてください。
- webhook_url: 上記で作成したwebhookのurl
- username: webhookがメッセージをpostした際に表示されるユーザ名

## 実行方法
2パターンの実行方法があります。

```ruby
echo "test" | ruby notify_discord.rb
```

or

```ruby
ruby notify_discord.rb "test"
```