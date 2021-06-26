課題の要件を満たすため、/home/login/へのディレクトリ作成、/etc/hostsファイルの編集が必要になります。

```Makefile title="Makefile"
...
set_up: volume add_host extract_wp
	docker-compose -f $(YML) up -d --build
// highlight-start
# root権限が必要！
volume:
	mkdir -p /home/ynakamot/data/mariadb
	mkdir -p /home/ynakamot/data/wordpress

add_host:
	echo "127.0.0.1 $(DOMAIN)" >> /etc/hosts
// highlight-end
extract_wp:
...
```

そのため、初回起動時のみ `sudo` コマンド経由での `make set_up` の実行をお願いします。

```shell title="初回セットアップ"
sudo make set_up
```

二回目以降は `make` のみで問題ありません。


稼働しているサービスを停止、コンテナ、ネットワークを削除する際は、 `make down` をお願いします。