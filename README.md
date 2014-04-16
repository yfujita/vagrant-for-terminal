# Windows ターミナル環境用 vagrant

## 使い方
1. vagrantをインストール[vagrant](http://www.vagrantup.com/)
2. Vagrantfileのsrc_dirにホスト側の共有するフォルダを設定する。
3. vagrant up
4. teratermとかでsshで接続する。 userとpassは"vagrant"
5. tmuxとか使える。/vmshare下にホスト側のファイルとかあるのでtmuxとかでいじれて嬉しい。
