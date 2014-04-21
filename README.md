# Windows ターミナル環境用 vagrant

[Windowsで良い感じのターミナル環境を構築してvimとかgitとかtmuxを使う](http://d.hatena.ne.jp/alexam/20120805/1344182180)  
を参考に自動化したものです。

## 使い方
1. git clone https://github.com/yfujita/vagrant-for-terminal.git --config core.autocrlf=false
2. vagrantをインストール[vagrant](http://www.vagrantup.com/)。VirtualBoxもインストール[VirtualBox](https://www.virtualbox.org/)。
3. vagrant-omnibusプラグインをインストール（vagrant plugin install vagrant-omnibus）
4. Vagrantfileのsrc_dirにホスト側の共有するフォルダを設定する。
5. vagrant up
6. teratermとかでsshで接続する。 userとpassは"vagrant"
7. tmuxとか使える。/vmshare下にホスト側のファイルとかあるのでtmuxとかでいじれて嬉しい。
