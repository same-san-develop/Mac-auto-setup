# アプリケーションのインストール

アプリケーション（CLI/GUI/AppStoreアプリ問わず）やフォントは、HomeBrew経由でインストールする。  
これにより、パソコンが変わっても、使い慣れたアプリケーション類をまとめてインストール可能。  

## 手順

## Apple Store サインイン

App Storeのアプリケーションは、App Store にサインインしていないとダウンロードできない。  
そのため、先にログインしておく。

### HomeBrew
下記の3行のコマンドで、必要なほぼ全てのアプリケーションがインストールされる。

```sh
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" # Homebrew本体のインストール
$ cd /path/to/ # brewfile があるディレクトリへ移動
$ brew bundle
```

`brew bundle` は、 同一ディレクトリ内の `brewfile` に従ってアプリケーションをインストールするコマンド。

HomeBrew経由でインストール済のアプリケーションをBrewfileでインストールしようとした場合、  
スルーされて次のアプリケーションのインストールに進む。

そのため、 すでにアプリケーションが一部インストール済であっても  
Brewfile は変更せず `brew bundle` して問題ない。

### 手動インストールするアプリケーション
下記については、HomeBrew経由でインストールできないため、手動でインストールを行う。
* FileZilla
* Microsoft Office

## アプリケーションの探し方

インストールしたいアプリケーションがある場合、HomeBrew経由のインストールが可能か、下記コマンドで確認可能。

```sh
$ brew search <アプリケーション名> # 例：brew search "chrome"
```

## インストールしたアプリケーションの確認

```sh
$ brew list # CLI
$ brew cask list # GUI
$ brew cask list | grep "font-" # フォント（フォントは必ず、先頭に font- が含まれるため）
```

## 現在のHomeBrewインストール状況のバックアップ（brewfileエクスポート）
現在のインストール状況を、下記コマンドで `brewfile` としてエクスポート可能。

```sh
$ cd /path/to/ # brewfile をエクスポートしたいディレクトリへ移動
$ brew backup
```
