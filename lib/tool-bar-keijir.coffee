module.exports =
  activate: (state) ->
    require('atom-package-deps').install('tool-bar-main')

  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'keijir-tool-bar'

    @toolBar.addButton
      icon: 'gear-a'
      callback: 'settings-view:open'
      tooltip: 'Open Settings View'
      iconset: 'ion'

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: "outdent"
      callback: "tree-view:toggle"
      tooltip: "サイドバー(Ctrl+\)"
      iconset: "fa"
    @toolBar.addButton
      icon: "list"
      callback: "project-sidebar:toggle"
      tooltip: "プロジェクトサイドバー"
      iconset: "fa"
      icon: "repo"
    @toolBar.addButton
      callback: "project-manager:list-projects"
      tooltip: "プロジェクトを開く(Alt-Shift-P)"
      iconset: ""
    @toolBar.addButton
      icon: "columns"
      callback: ["pane:split-right"]
      tooltip: "split-pane"
      iconset: "fa"

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: "document"
      callback: "application:new-file"
      tooltip: "新しいファイル(Ctrl+N)"
      iconset: "ion"
    @toolBar.addButton
      icon: "file"
      callback: "advanced-open-file:toggle"
      tooltip: "ファイルを開く(Ctrl+O)"
      iconset: "fa"
    @toolBar.addButton
      icon: "floppy-o"
      callback: "core:save"
      tooltip: "ファイルの保存(Ctrl+S)"
      iconset: "fa"

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: "code"
      callback: "atom-beautify:beautify-editor"
      tooltip: "テキストの整形"
      iconset: "fa"
      mode: "atom-text-editor"

    @toolBar.addButton
      icon: "globe"
      callback: "atom-html-preview:toggle"
      tooltip: "html-preview(Ctrl+Shift+H)"
      iconset: ""

    @toolBar.addButton
      icon: "markdown"
      callback: "markdown-preview-plus:toggle"
      tooltip: "markdown-preview(Ctrl+Shift+M)"
      iconset: ""
      disable: "!markdown"

    @toolBar.addSpacer()

      @toolBar.addButton
      icon: "check-square-o"
      callback: "todo-show:find-in-project"
      tooltip: "todo-show:project"
      iconset: "fa"

    @toolBar.addButton
      icon: "check"
      callback: "todo-show:find-in-open-files"
      tooltip: "todo-show:file"
      iconset: "fa"

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: "angle-left"
      callback: "pane:show-previous-item"
      tooltip: "前のタブ(Ctrl+Shift+Tab)"
      iconset: "fa"

    @toolBar.addButton
      icon: "angle-right"
      callback: "pane:show-next-item"
      tooltip: "次のタブ(Ctrl+Tab)"
      iconset: "fa"

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: "chrome"
      callback: "browser-plus:open"
      tooltip: "Browser(Ctrl+Alt+O)"
      iconset: "fa"

    if atom.inDevMode()
      @toolBar.addSpacer()

      @toolBar.addButton
        icon: 'refresh'
        callback: 'window:reload'
        tooltip: 'Reload Window'
        iconset: 'ion'
      @toolBar.addButton
        icon: 'terminal'
        callback: ->
          require('remote').getCurrentWindow().toggleDevTools()
        tooltip: 'Toggle Developer Tools'
