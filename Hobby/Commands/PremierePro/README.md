# PremierePro mkmovieコマンド

動画作成時に使用するディレクトリを一括で作成するコマンドライン・プログラムです。

## インストール方法
ターミナルで下記コマンドを入力し、 ~/bin ディレクトリにパスを通します。（すでに通してある場合は確認不要）  

```bash
$ echo 'PATH="$PATH:~/bin"' >> ~/.bash_profile
```
次に [install.sh](https://github.com/same-js/Mac-auto-setup/blob/main/Hobby/Commands/PremierePro/install.sh) を任意のディレクトリに保存し、実行します。  
（どこに保存しても、実行結果は同じですので、 `~/Downloads`　や 一時ディレクトリなどで実行して問題ありません）

## 使い方

### ディレクトリ作成
PremieProで作業を行いたいディレクトリを確定したら、ターミナルでそのパスに移動し、`mkmovie` コマンドを実行します。

```bash
$ cd /path/TO
$ mkmovie
```

すると、実行したパスに次のディレクトリが作成されます。

ディレクトリ名 | 説明
--- | ---
clip | カメラ、スマートフォンなどで撮影した動画ファイルそのものを入れます。
audio | PremireProの設定で、「キャプチャしたオーディオ」をここに保存するように設定します。
bgm | 　使用するBGM素材をここに入れます。
se | SE（効果音）素材をここに入れます。
capture | PremireProの設定で、「キャプチャしたビデオ」をここに保存するように設定します。
backup | PremireProの設定で、「プロジェクトの自動保存」をここに保存するように設定します。
thumbnail | サムネイルに使用する予定の画像を保存します。

### セルフ・アップデート
このプログラムは、 [same.js](https://github.com/same-js) の気まぐれでアップデートされていきます。

アップデートは、次のコマンドを実行するだけで簡単にできるようにしています。
```bash
$ mkmovie upgrade
```
