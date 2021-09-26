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

# Gitコマンドメモ

<!--
_color: white
_footer: 'Photo by Clyde RS on Unsplash'
-->
![bg brightness:0.6](https://images.unsplash.com/photo-1514454529242-9e4677563e7b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80)

---

## 作業中のブランチに差分を取り込む

オリジンを更新する

```command
git fetch origin
```

作業中ブランチへマスターを取り込む

```cmd
git merge --no-ff origin/master
```

---

## コミットハッシュを取得

長いコミットハッシュを取得する場合

```command
git rev-parse HEAD
```

短いコミットハッシュを取得する場合

```command
git rev-parse --short HEAD
```

---

## おわりに

何度も忘れてしまうのでとりあえずスライドにしておく。

<!--
_footer: 'Photo by Taylor Van Riper on Unsplash'
-->
![bg left:40% brightness:0.9](https://images.unsplash.com/photo-1513002749550-c59d786b8e6c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80)
