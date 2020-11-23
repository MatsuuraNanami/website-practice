 Vagrant.configure("2") do |config|
  config.vm.box = "ailispaw/barge"
  config.vm.network "private_network", ip: "192.168.33.10",auto_config:false

  config.vm.network "forwarded_port", guest: 80,   host: 10080
  config.vm.network "forwarded_port", guest: 3306, host: 13306

  # フォルダの同期：開発環境なのでパーミッションを777に設定してしまう。
  config.vm.synced_folder "./", "/vagrant", mount_options: ['dmode=777', 'fmode=777']
end