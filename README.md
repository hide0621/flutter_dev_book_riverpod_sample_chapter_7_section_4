# flutter_dev_book_riverpod_sample_chapter_7_section_4

書籍「Flutter実践開発」の第7章４節の内容に基づくものです。

[Flutter実践開発 - iPhone／Android両対応アプリ開発のテクニック - ](https://gihyo.jp/book/2024/978-4-297-13993-3)

## Riverpodのコード生成とLinterのパッケージ導入について

以下のコマンドで必要なパッケージを導入してください。

`flutter pub add flutter_riverpod riverpod_annotation`

`flutter pub add --dev riverpod_generator build_runner custom_lint riverpod_lint `

## コード生成のコマンド

以下のコマンドでコード生成を行います。

`flutter packages pub run build_runner build`

## watchとreadの違い

`watch`はProviderの値を監視して、`build`メソッドの中でこれが呼ばれた際は、値の変更があればそれを察知してリビルドさせる。

`read`はその時点でのProviderの値を取得するのみ。

Providerから値を取得する際は可能な限り`watch`を使うようにする。

これは、`watch`を使うことでアプリ全体が状態変化に自動で反応し、メンテナンス性の高いアプリを実現できるため。

一方、値を監視する必要のないボタンのタップイベントや`State`のライフサイクルイベントなどでは`read`を使う。

## riverpod_lintを有効化するために、analysis_options.yamlにcustom_lintを有効化する

詳細は`analysis_options.yaml`を参照

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
