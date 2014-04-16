# Windows ターミナル環境用 vagrant

## 使い方
1. vagrantをインストール[vagrant](http://www.vagrantup.com/)
2. boxを追加
    * > vagrant box add centos http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130427.box
3. Vagrantfileのsrc_dirにホスト側の共有するフォルダを設定する。
4. vagrant up
5. teratermとかでsshで接続する。
6. tmuxとか使える。/vmshare下にホスト側のファイルとｋあるのでtmuxとかでいじれて嬉しい。