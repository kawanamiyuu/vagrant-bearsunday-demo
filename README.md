# BEAR.Sunday の Demo.Sandbox アプリを Vagrant 上で動かすサンプル

- [BEAR.Sunday](http://bearsunday.github.io/)

## 環境構築

- Vagrantは```ver 1.5```以上が必要

```bash
# VMの起動～プロビジョニング (※時間がかかります)
[local] $ vagrant up
```

## 動作確認

```bash
# VMにSSHログイン
[local] $ vagrant ssh
```

```bash
# Demo.Sandboxアプリを起動 (PHP built-in Server が起動します)
[vagrant] $ /vagrant/bear/bin/bear.server /vagrant/bear/apps/Demo.Sandbox
```

ブラウザで ```http://192.168.33.10:8080``` にアクセス
