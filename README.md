# keijir Tool Bar package (for Atom Editor)

## Description
keijir customize Tool Bar using [tool-bar](https://atom.io/packages/tool-bar) package.

## Preview
![Screenshot](https://github.com/keijir/atom-tool-bar-keijir/raw/master/screenshot.png)

## Buttons
* 設定 (settings-view:open)
* Timecop (timecop:view)
* Context Menu Manager (context-menu-manager:toggle) (requires [context-menu-manager](https://atom.io/packages/context-menu-manager) package)
* Toggle Command Palette (command-palette:toggle)
* -
* プロジェクトサイドバー (project-sidebar:toggle) (requires [project-sidebar](https://atom.io/packages/project-sidebar) package)
* プロジェクトを開く (project-manager:list-projects) (requires [project-manager](https://atom.io/packages/project-manager) package)
* プロジェクトを保存 (project-manager:save-project) (requires [project-manager](https://atom.io/packages/project-manager) package)
* todo-show:project (todo-show:find-in-project) (requires [todo-show](https://atom.io/packages/todo-show) package)
* todo-show:file (todo-show:find-in-open-files) (requires [todo-show](https://atom.io/packages/todo-show) package)
* -
* 新しいファイル (application:new-file)
* ファイルを開く (advanced-open-file:toggle) (requires [advanced-open-file](https://atom.io/packages/advanced-open-file) package)
* ファイルの保存 (core:save)
* Local History (local-history:current-file) (requires [local-history](https://atom.io/packages/local-history) package)
* 検索と置換 (find-and-replace:toggle)
* -
* Diff (split-diff:toggle) (requires [split-diff](https://atom.io/packages/split-diff) package)
* Git Clone (git-clone:clone) (requires [git-clone](https://atom.io/packages/git-clone) package)
* Git (git-control:toggle or git-plus:menu) (requires [git-control](https://atom.io/packages/git-control) or [git-plus](https://atom.io/packages/git-plus) package)
* テキストの整形 (atom-beautify:beautify-editor) (requires [atom-beautify](https://atom.io/packages/atom-beautify) package)
* html-preview (atom-html-preview:toggle) (requires [atom-html-preview](https://atom.io/packages/atom-html-preview) package)
* markdown-preview (markdown-preview-plus:toggle or markdown-preview:toggle) (requires [markdown-preview-plus](https://atom.io/packages/markdown-preview-plus) or [markdown-preview](https://atom.io/packages/markdown-preview) package)
* -
* サイドバー (tree-view:toggle)
* split-right (pane:split-right)
* split-down (pane:split-down)
* 全画面表示 (window:toggle-full-screen)
* -
* 前のタブ (pane:show-previous-item)
* 次のタブ (pane:show-next-item)
* -
* Browser (browser-plus:open) (requires [browser-plus](https://atom.io/packages/browser-plus) package)
* AskStack (ask-stack:ask-question) (requires [ask-stack](https://atom.io/packages/ask-stack) package)
* Reload Window

When in **dev mode** it adds two more buttons:
* -
* KeyBingind Resolver (key-binding-resolver:toggle)
* Toggle Developer Tools

## Requires other Plugins
some button using plugins
* [tool-bar](https://atom.io/packages/tool-bar)
* [context-menu-manager](https://atom.io/packages/context-menu-manager)
* [project-sidebar](https://atom.io/packages/project-sidebar)
* [project-manager](https://atom.io/packages/project-manager)
* [todo-show](https://atom.io/packages/todo-show)
* [advanced-open-file](https://atom.io/packages/advanced-open-file)
* [local-history](https://atom.io/packages/local-history)
* [split-diff](https://atom.io/packages/split-diff)
* [git-clone](https://atom.io/packages/git-clone)
* [git-control](https://atom.io/packages/git-control) or [git-plus](https://atom.io/packages/git-plus)
* [atom-beautify](https://atom.io/packages/atom-beautify)
* [atom-html-preview](https://atom.io/packages/atom-html-preview)
* [markdown-preview-plus](https://atom.io/packages/markdown-preview-plus)
* [browser-plus](https://atom.io/packages/browser-plus)
* [ask-stack](https://atom.io/packages/ask-stack)

## Installation
![Screenshot](https://github.com/keijir/atom-tool-bar-keijir/raw/master/install.png)

* Setting > Install > Search [keijir]
* Click [Install] Button


or


First you have to install the `tool-bar` package which is required:

```bash
apm install tool-bar
```

Then you install the `tool-bar-keijir` package:

```bash
apm install tool-bar-keijir
```

## License
The MIT License
