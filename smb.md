---
marp: true
theme: default
header: ""
footer: "© Copyright yatta47 All rights reserved."

size: 16:9
paginate: true

style: |
    section.title {
        justify-content: center;
        font-family: 'Yu Gothic UI';
        text-align: center;
    }

    section {
        justify-content: start;
        font-family: 'Yu Gothic UI';
    }

---
<!-- _class: title -->

# LinuxにSMBサーバに接続する

<!--
_color: white
_footer: 'Photo by Clyde RS on Unsplash'
-->
![bg brightness:0.6](https://images.unsplash.com/photo-1514454529242-9e4677563e7b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80)

---

## 概要

NASにWindowsから接続しようとした際に、SMB1が接続だめって出てきたので、Linuxから接続するために調べた。

LinuxからNASに接続する方法。

環境は以下。

- Ubuntu18.06
- zsh使用

---

## smbclientをインストール

```command
sudo apt install smbclient cifs-utils
```

---

## smbclientで接続

```command
smbclient //192.168.11.1/disk1 -U yatta47
```

引数の説明は以下。

| 項目               | 値           |
| ------------------ | ------------ |
| SMBサーバのIP      | 192.168.11.1 |
| 共有ディレクトリ名 | disk1        |
| 接続ユーザ名       | yatta47      |

上記コマンドを実行するとパスワード入力が求められるので、パスワード入力しましょう。

```prompt
Enter user's password:
```

---

## smbclientで使うコマンド(1/2)

ディレクトリの中身を確認する

```command
ls
```

ディレクトリを移動する

```command
cd (移動先のディレクトリ名)
```

ディレクトリを作成

```command
mkdir (作成ディレクトリ名)
```

---

## smbclientで使うコマンド(2/2)

ファイルを取得する

```command
get (サーバファイル名) (ローカルファイル名)
```

ファイルを転送する

```command
put (ローカルファイル名) (サーバファイル名)
```

---

## 参考サイト

[【Linux】コマンドでSMBサーバーに接続してファイルをダウンロード/アップロードする | ちりつもぶろぐ](https://chiritsumo-blog.com/linux-smbclient/)

---

## おしまい

<!--
_footer: 'Photo by Taylor Van Riper on Unsplash'
-->
![bg left:40% brightness:0.9](https://images.unsplash.com/photo-1513002749550-c59d786b8e6c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80)
