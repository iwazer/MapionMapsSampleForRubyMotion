MapionMaps.frameworkサンプル
---------------------------

## MapionMaps.frameworkのダウンロード

http://mapion.github.com/MapionMaps-for-iOS-Sample/ の[ダウンロードリンク](http://mapion.github.com/MapionMaps-for-iOS-Sample/download.html)から最新版のMapionMaps.frameworkをダウンロードし展開します。

## リポジトリをチェックアウト

```
git clone git://github.com/iwazer/MapionMapsSampleForRubyMotion.git
cd MapionMapsSampleForRubyMotion
```

## MapionMaps.frameworkをRubyMotionから使えるようにする

framework内のライブラリがシンボリックリンクのままではRubyMotionで使用できないため、コピーかハードリンクに変更します。

```
mv /path/to/Downloads/MapionMaps.framework vendor/
rm vendor/MapionMaps.framework/MapionMaps
ln vendor/MapionMaps.framework/Versions/Current/MapionMaps vendor/MapionMaps.framework/MapionMaps
```

リソースファイルをRubyMotionのresourcesにコピーします。

```
cp vendor/MapionMaps.framework/Resources/*.png resources/
```

## APIキーの取得

[APIキー](http://mapion.github.com/MapionMaps-for-iOS-Sample/apikey.html)からAPIキーを取得してクリップボードにコピーします。

_APIキーは忘れないようどこかに控えておいてください_

RubyMotionのプログラム内で参照できるようにShellの環境変数に設定します。

```
export MAPION_MAPS_KEY=<APIキーをペースト>
```

## サンプルの実行

レッツ、ほのぼのrake!（パクリ）

```
rake
```

<img src="https://raw.github.com/iwazer/MapionMapsSampleForRubyMotion/master/screenshot/MapionMaps.png" width="400" />

あなたのアプリにマピオンならではの情報満載な地図を利用してみてはいかがでしょうか。

_注意：無料でのご利用は現在、一日10,000ページビューまでとなっております。[利用規約](http://mapion.github.com/MapionMaps-for-iOS-Sample/kiyaku.html)_

