# SDXL LoRA Factory

![SDXL LoRA Factory](./view.png)

[English](#english) | [日本語](#japanese)

**[Dwonload](https://github.com/UNfukashigi/SDXL-LoRA-Factory/blob/main/SDXL-LoRA-Factory-v2.2.zip)**

▼Animaバージョンも公開しています。Anima version is also available.<br>
[https://github.com/UNfukashigi/Anima-LoRA-Factory](https://github.com/UNfukashigi/Anima-LoRA-Factory)

▼詳しい使い方については、以下の記事をご覧ください。Anima版の説明ですが、基本の使い方は同じです。<br>
[https://x.com/UNfukashigi/status/2045744319433490449](https://x.com/UNfukashigi/status/2045744319433490449)

---

<code>8/31 更新（Updated）**v4.8**<br>
・RepeatsをUIから設定できるようにしました。デフォルト値は2です。- Added a UI setting for Repeats. The default value is 2.<br>
・画像枚数 × Repeats × Epochs に基づく推定ステップ数を表示するようにしました。- Added an estimated step count based on image count × Repeats × Epochs.<br>
・学習の強さと総ステップ数の目安を表示する説明欄を追加しました。- Added a guide explaining training strength and recommended total step ranges.<br>
・上級設定にDataLoader Workersを追加しました。0が最も安定し、旧バージョンと同じ挙動に近づけたい場合は8に設定できます。- Added DataLoader Workers to Advanced Settings. 0 is the most stable, and 8 is close to the previous version behavior.</code><br>

<code>7/5 更新（Updated）**v4.6.1**<br>
・学習中にログ表示用のWebSocket接続が途中で切断され、画面上では学習が停止したように見える場合がある問題への対策として、サーバー側の接続維持設定を調整しました。- Adjusted the server-side connection keep-alive settings to help prevent cases where the WebSocket connection used for training logs disconnects during training, making it appear as if training has stopped on the screen.</code><br>

<code>7/5 更新（Updated）**v4.6**<br>
・上級設定に左右反転 augmentation、タグ順シャッフル、keep_tokens、Min SNR Gamma を追加しました。各オプションは初期状態ではOFFで、必要な場合のみ有効化できます。Min SNR Gamma は数値変更に対応し、推奨値を5として案内しています。- Added Horizontal Flip Augmentation, Shuffle Caption, keep_tokens, and Min SNR Gamma to Advanced Settings. These options are off by default and can be enabled only when needed. Min SNR Gamma now supports custom values, with 5 shown as the recommended value.<br>
・Optimizer Args の入力欄がわかりにくかったため、入力例の表示と自動保存を削除しました。過去に保存された値も起動時に自動で消去され、通常は空欄のまま利用できます。- Removed the confusing example text and auto-save behavior from Optimizer Args. Previously saved values are now cleared on startup, so the field stays blank by default.<br>
・依存関係の不足やバージョン差によるエラー対策として、voluptuous を requirements に追加し、transformers を4系（transformers>=4.44,<5）に固定しました。これにより、新規環境でのセットアップ失敗や transformers 5系との互換性問題を避けやすくしています。- Added voluptuous to requirements and constrained transformers to version 4.x (transformers>=4.44,<5) to reduce setup failures and compatibility issues with transformers 5.x in fresh environments.</code><br>
・SDXL版で Prodigy / DAdaptation 使用時に、Text Encoder出力キャッシュとの設定衝突で学習が失敗する問題を修正しました。互換性のため、SDXL版では Text Encoder出力キャッシュを自動付与しないように変更しています。- Fixed an SDXL issue where training could fail with Prodigy / DAdaptation due to a conflict with Text Encoder output caching. For compatibility, Text Encoder output caching is no longer automatically enabled in the SDXL version.

<code>7/5 更新（Updated）**v4.6**<br>
・上級設定に左右反転 augmentation、タグ順シャッフル、keep_tokens、Min SNR Gamma を追加しました。各オプションは初期状態ではOFFで、必要な場合のみ有効化できます。Min SNR Gamma は数値変更に対応し、推奨値を5として案内しています。- Added Horizontal Flip Augmentation, Shuffle Caption, keep_tokens, and Min SNR Gamma to Advanced Settings. These options are off by default and can be enabled only when needed. Min SNR Gamma now supports custom values, with 5 shown as the recommended value.<br>
・Optimizer Args の入力欄がわかりにくかったため、入力例の表示と自動保存を削除しました。過去に保存された値も起動時に自動で消去され、通常は空欄のまま利用できます。- Removed the confusing example text and auto-save behavior from Optimizer Args. Previously saved values are now cleared on startup, so the field stays blank by default.<br>
・依存関係の不足やバージョン差によるエラー対策として、voluptuous を requirements に追加し、transformers を4系（transformers>=4.44,<5）に固定しました。これにより、新規環境でのセットアップ失敗や transformers 5系との互換性問題を避けやすくしています。- Added voluptuous to requirements and constrained transformers to version 4.x (transformers>=4.44,<5) to reduce setup failures and compatibility issues with transformers 5.x in fresh environments.</code><br>

<code>6/29 更新（Updated）**v4.0**<br>
・学習設定画面に「オプティマイザー」選択欄を追加し、AdamWに加えてProdigy / DAdaptation（学習率自動調整）を選択できるようにしました。Prodigy / DAdaptation選択時は学習率の表示が専用のヒント（推奨値1.0前後）に切り替わります。- Added an “Optimizer” selector to the training settings. In addition to AdamW, you can now choose Prodigy / DAdaptation (auto learning-rate tuning). Selecting Prodigy/DAdaptation switches the learning rate UI to a dedicated hint recommending a value around 1.0.<br>
・上級設定に「オプティマイザー追加引数 (--optimizer_args)」の入力欄を追加しました。decouple=Trueなどの追加パラメータを任意で指定できます。- Added an “Optimizer Args (--optimizer_args)” field to the advanced settings, allowing optional extra parameters such as decouple=True to be specified.<br>
・Prodigy / DAdaptation選択時に「低VRAM対策を強化する」チェックボックスを追加しました。有効にするとblocks_to_swap（SDXL版はキャッシュ系オプション）を追加し、VRAM消費を抑えます（学習はやや遅くなります）。- Added an “Extra low-VRAM offset” checkbox shown when Prodigy/DAdaptation is selected. Enabling it adds extra blocks_to_swap (or extra caching options on the SDXL version) to reduce VRAM usage, at the cost of slightly slower training.<br>
・requirements.txtにdadaptation・prodigyoptを追加し、「学習環境の再構築」ボタンで自動インストールされるようにしました。また同ボタンが常に再実行可能になり、依存パッケージの追加があった場合もいつでも再インストールできるようにしました。- Added dadaptation and prodigyopt to requirements.txt so they are installed automatically via the “Repair Environment” button. The button can now always be re-run, so newly added dependencies can be reinstalled at any time.<br>
・LoRAのランク (network_dim) ・アルファ (network_alpha) のデフォルト値を4/1から16/16に変更しました。キャラクターLoRA用途でより実用的な強さになります。- Changed the default LoRA rank (network_dim) and alpha (network_alpha) from 4/1 to 16/16, providing more practical training strength for character LoRA use cases.<br></code>

<code>6/29 更新（Updated）**v3.1**<br>
・タグ編集画面に「トリガーワード追加」ボタンを追加しました。通常の「一括追加」は全画像のキャプション末尾にタグを追加し、「トリガーワード追加」は全画像のキャプション先頭にキーワードを追加するように変更しています。- Added a “Trigger Word” button to the tag editor. Normal batch add now appends tags to the end of captions for all images, while trigger word add inserts keywords at the beginning of captions for all images.</code><br>

<code>・`start.bat` 内の `APP_PORT` を編集することで、GUIのポート番号をユーザーが自由に変更できるようにしました。- Added an `APP_PORT` setting in `start.bat`, allowing users to change the GUI port number freely.</code>

<code>6/28 更新（Updated）**v3**<br>
・セットアップ時に指定されていた古いPyTorch nightly固定バージョンが取得できず、インストールに失敗する問題を修正しました。RTX 50シリーズ向けのPyTorch / torchvisionは固定日付を外し、現在配布されているnightly版へ更新する形式に変更しています。- Fixed an issue where setup failed because the old fixed PyTorch nightly versions were no longer available. For RTX 50 series GPUs, PyTorch / torchvision installation now uses the currently available nightly build without fixed date-based versions.</code>

<code>5/2 更新（Updated）**v2.3**<br>
・英語と日本語以外の環境でエラーが発生する問題を修正しました。英語か日本語の環境であれば2.2でも問題なく利用可能です。中国語などほかの言語をご利用の場合は2.3をご利用ください。- We have fixed an issue where errors occurred in environments other than English and Japanese. Version 2.2 should work without problems in English or Japanese environments. For other languages ​​such as Chinese, please use version 2.3.</code>

<code>4/26 更新（Updated）**v2.2**<br>
・エラー報告の多かった原因のsd-scriptsを同梱しました。ZIP形式での配布に変更。Gitは不要になりました。- We've included sd-scripts, which were the cause of many error reports.Distribution format changed to ZIP.Git is no longer needed.</code>

<code>4/26 更新（Updated）**v2.1**<br>
・エラー報告の多かった原因として、PCのグローバル環境で環境変数PYTHONPATHが設定されている場合について、必ずvenv環境のPythonを利用するように更新しました。- Due to a high number of error reports, we have updated the code to always use the Python environment in a venv environment when the environment variable PYTHONPATH is set in the PC's global environment.</code>

<code>4/25 更新（Updated）<br>
・venv環境をツール内に構築する設計にしました。グローバル環境に影響を与えず、より安心してご利用頂けます。- The design now incorporates a venv environment within the tool. This ensures that it does not affect the global environment and can be used with greater peace of mind.<br>
・より安定して使えるようにモジュールチェック機能を強化し、自動インストールの機能も強化しました。- The module check function has been enhanced for greater stability, and the automatic installation function has also been improved.
・Anima版とSDXL版でURL（ポート番号）を分けました。キャッシュが被らないので表示も安定するはず。- I've separated the URLs (port numbers) for the Anima and SDXL versions. This should prevent cache conflicts and improve display stability.</code>

---

<code>Further modifications have been made so that the following people can also use it.
People using an NVIDIA GPU that is not the latest model.
People who already have the CPU version of PyTorch installed on their PC.
People whose torchvision has mysteriously disappeared.
People who do not have a GPU (or have an AMD/Intel GPU).</code>

---

<a id="english"></a>

# English

**SDXL LoRA Factory** is a GUI tool designed to make Stable Diffusion XL (SDXL) LoRA training easy and intuitive for everyone.
No complex command-line operations required—it supports everything from image preparation and tagging to training execution in one stop.

## 🌟 Key Features

- **Intuitive UI**: A sleek, modern Grey & Orange design that guides you through the training steps without confusion.
- **Auto-Tagging (WD14 Tagger)**: AI analyzes your image content and automatically generates the tags necessary for training.
- **Visual Tag Editor**: Edit generated tags in real-time while looking at the images. Supports batch addition and removal.
- **SDXL-Specific Optimization**: Pre-configured with settings to maximize SDXL performance, including 1024x1024 resolution, bf16 precision, and gradient checkpointing.
- **VRAM Saving Mode**: Features a "Low VRAM Mode" that allows training on GPUs with as little as 8GB VRAM.
- **One-Click Setup**: Automatically download and set up complex dependencies like `sd-scripts` with a single button click inside the app.

## 🛠️ Requirements

- **OS**: Windows 10/11
- **GPU**: NVIDIA GPU (8GB VRAM or more recommended)
- **Python**: 3.10 or higher

## 🚀 How to Use

1. **Setup**:
   - Run `start.bat` to start the server.
   - Open `http://localhost:8001` in your browser.

2. **Dataset Preparation**:
   - Select the folder containing the images you want to train.
   - Run "Auto-Tagging" and edit tags as needed.

3. **Training Configuration**:
   - Select the Base Model (SDXL) and VAE.
   - Set the number of epochs and learning rate (defaults are recommended for beginners).

4. **Training Execution**:
   - Click "Start Training." Real-time logs will be displayed as the training progresses.

## 📦 Tech Stack

- **Backend**: FastAPI, Python, sd-scripts (kohya-ss)
- **Frontend**: Vanilla JS, CSS (Modern Glassmorphism)
- **Engine**: Stable Diffusion XL

## 📝 License

This project is released under the Apache License 2.0 License.

---

<a id="japanese"></a>

# 日本語

**SDXL LoRA Factory** は、Stable Diffusion XL (SDXL) の LoRA 学習を、誰でも簡単に、直感的な操作で行えるように設計された GUI ツールです。
複雑なコマンドライン操作は不要で、画像の準備からタグ付け、学習の実行までをワンストップでサポートします。

## 🌟 主な特徴

- **直感的な UI**: 洗練されたグレー＆オレンジのモダンなデザインで、学習のステップを迷わず進められます。
- **自動タグ付け (WD14 Tagger)**: AI が画像の内容を分析し、学習に必要なタグを自動で生成します。
- **ビジュアルタグエディタ**: 生成されたタグを画像を見ながらリアルタイムで編集可能。一括追加・削除もサポート。
- **SDXL 特化の最適化**: 1024x1024 解像度、bf16 精度、グラデーション・チェックポインティングなど、SDXL の性能を最大限に引き出す設定がプリセットされています。
- **VRAM 節約モード**: 8GB 程度の VRAM でも学習が可能な「低容量モード」を搭載。
- **ワンクリック・セットアップ**: `sd-scripts` などの複雑な依存関係を、アプリ内からボタン一つで自動取得します。

## 🛠️ 動作要件

- **OS**: Windows 10/11
- **GPU**: NVIDIA GPU (VRAM 8GB 以上推奨)
- **Python**: 3.10 以上

## 🚀 使い方

1. **セットアップ**:
   - `start.bat` を実行してサーバーを起動します。
   - ブラウザで `http://localhost:8001` を開きます。

2. **データセット準備**:
   - 学習させたい画像が入ったフォルダを選択します。
   - 「自動タグ付け」を実行し、必要に応じてタグを編集します。

3. **学習設定**:
   - ベースモデル (SDXL) と VAE を選択します。
   - エポック数や学習率を設定します（初心者の方はデフォルト推奨）。

4. **トレーニング実行**:
   - 「LoRA学習開始」をクリックすると、リアルタイムでログが表示されながら学習が始まります。

## 📦 技術スタック

- **Backend**: FastAPI, Python, sd-scripts (kohya-ss)
- **Frontend**: Vanilla JS, CSS (Modern Glassmorphism)
- **Engine**: Stable Diffusion XL

## 📝 ライセンス

このプロジェクトは Apache License 2.0 ライセンスの下で公開されています。

---

Created by [fukachan.jp](https://fukachan.jp/)<br>

X [https://x.com/UNfukashigi](https://x.com/UNfukashigi)
