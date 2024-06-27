
# 编译`buildroot`工具链

## 下载 buildroot

进去[buildroot download](https://buildroot.org/downloads/)找自己喜欢的版本，这里使用的是2022年最后一个版本：
```shell 
wget https://git.buildroot.net/buildroot/snapshot/buildroot-2022.11.3.tar.bz2
```

## 使用docker编译

为了方便在旧系统使用，可以考虑使用`docker 容器`编译，例如：
```shell
docker run --rm -it -v `pwd`:/opt ubuntu:18.04 bash
# 切换国内源
# sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
```
开启一个`ubuntu 18`的环境。

需要安装的依赖有以下这些：`gcc`、`make`、`bc`、`file`、`wget`、`cpio`、`unzip`、`rsync`、`g++`、`patch`、`perl`、`python3`、`libncurses-dev`、`git`
```shell
apt install -y gcc make bc file wget cpio unzip rsync g++ patch perl python3 libncurses-dev git
```

## 编译

```shell
# 进入选择编译选项，如果需要的话
make menuconfig
# 开始编译
make
```

编译成功后的编译链在`output/host`下。