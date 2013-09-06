# cleane

cleaneは、fnobiが使っている.emacs.dです。

## 特徴

- なるべくすべて、package-install で導入できるパッケージを利用してます。
- そのため、わりと余計なファイルが少なく、環境によって動かなかったりは少ないと思います
- eshellをがんがんに使う人向けです。

## インストール

```
cd /your/project/path
git clone https://github.com/fnobi/cleane.git
ln -s /your/project/path/cleane ~/.emacs.d
```

## 依存パッケージのインストール

```
M-x load-file RET elispfile.el
```

## 依存パッケージのリスト

- [elispfile.el](https://github.com/fnobi/cleane/blob/master/elispfile.el) を見るとだいたい分かる気がします。
