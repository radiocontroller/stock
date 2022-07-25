# 实时获取股价信息脚本，可在终端执行

![stock.png](https://raw.githubusercontent.com/radiocontroller/stock/main/stock.png)

## 1. 使用前需要安装ruby环境:

#### apt (Debian or Ubuntu)
```shell
sudo apt-get install ruby-full
```

#### yum (CentOS, Fedora, or RHEL)
```shell
sudo yum install ruby
```

#### Homebrew (macOS)
```shell
brew install ruby
```

#### Windows Package Manager
```shell
winget install Ruby
```

#### 确认是否安装成功
```shell
ruby -v
```

## 2. 进入stock.rb目录下执行
```shell
ruby stock.rb
```

## 3. 在源码stock.rb中添加fetch行，可对多个股价进行关注

## 4. 接口返回的各字段含义可参考: [https://www.programminghunter.com/article/1952756816/](https://www.programminghunter.com/article/1952756816/)
