module.exports =
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

        @toolBar.addButton
                icon: 'dashboard'
                callback: 'timecop:view'
                tooltip: 'Timecop'
                iconset: ''

        if atom.packages.loadedPackages['context-menu-manager']
            @toolBar.addButton
                icon: 'mouse-pointer'
                callback: 'context-menu-manager:toggle'
                tooltip: 'Context Menu Manager'
                iconset: 'fa'

        @toolBar.addButton
            icon: 'terminal'
            callback: 'command-palette:toggle'
            tooltip: 'Toggle Command Palette'
            iconset: ''

        @toolBar.addSpacer()

        if atom.packages.loadedPackages['project-sidebar']
            @toolBar.addButton
                icon: 'list'
                callback: 'project-sidebar:toggle'
                tooltip: 'プロジェクトサイドバー'
                iconset: 'fa'

        if atom.packages.loadedPackages['project-manager']
            @toolBar.addButton
                icon: 'filing'
                callback: 'project-manager:list-projects'
                tooltip: 'プロジェクトを開く(Alt-Shift-P)'
                iconset: 'ion'
            @toolBar.addButton
                icon: 'archive'
                callback: 'project-manager:save-project'
                tooltip: 'プロジェクトを保存'
                iconset: 'ion'

        @toolBar.addButton
            icon: 'folder'
            callback: 'application:add-project-folder'
            tooltip: 'プロジェクトフォルダを追加'
            iconset: 'ion'

        @toolBar.addSpacer()

        if atom.packages.loadedPackages['todo-show']
            @toolBar.addButton
                icon: 'check-square-o'
                callback: 'todo-show:find-in-project'
                tooltip: 'todo-show:project'
                iconset: 'fa'
            @toolBar.addButton
                icon: 'check'
                callback: 'todo-show:find-in-open-files'
                tooltip: 'todo-show:file'
                iconset: 'fa'

        @toolBar.addSpacer()

        @toolBar.addButton
            icon: 'file-o'
            callback: 'application:new-file'
            tooltip: '新しいファイル(Ctrl+N)'
            iconset: 'fa'

        if atom.packages.loadedPackages['advanced-open-file']
            @toolBar.addButton
                icon: 'file-text-o'
                callback: 'advanced-open-file:toggle'
                tooltip: 'ファイルを開く(Ctrl+O)'
                iconset: 'fa'
        else
            @toolBar.addButton
                icon: 'file-text-o'
                callback: 'application:open'
                tooltip: 'ファイルを開く(Ctrl+O)'
                iconset: 'fa'

        @toolBar.addButton
            icon: 'floppy-o'
            callback: 'core:save'
            tooltip: 'ファイルの保存(Ctrl+S)'
            iconset: 'fa'

        if atom.packages.loadedPackages['local-history']
            @toolBar.addButton
                icon: 'history'
                callback: 'local-history:current-file'
                tooltip: 'Local History'
                iconset: 'fa'

        @toolBar.addButton
            icon: 'search'
            callback: 'find-and-replace:toggle'
            tooltip: '検索と置換'
            iconset: 'fa'

        @toolBar.addSpacer()

        if atom.packages.loadedPackages['split-diff']
            @toolBar.addButton
                icon: 'columns'
                callback: 'split-diff:toggle'
                tooltip: 'Diff'
                iconset: 'fa'

        if atom.packages.loadedPackages['git-clone']
            @toolBar.addButton
                icon: 'clippy'
                callback: 'git-clone:clone'
                tooltip: 'Git Clone'
                iconset: ''

        if atom.packages.loadedPackages['git-control']
            @toolBar.addButton
                icon: 'git'
                callback: 'git-control:toggle'
                tooltip: 'Git Control'
                iconset: 'fa'
        else if atom.packages.loadedPackages['git-plus']
            @toolBar.addButton
                icon : 'git'
                callback : 'git-plus:menu'
                tooltip : 'Git plus'
                iconset : 'fa'

        if atom.packages.loadedPackages['atom-beautify']
            @toolBar.addButton
                icon: 'code'
                callback: 'atom-beautify:beautify-editor'
                tooltip: 'テキストの整形'
                iconset: 'fa'
                mode: 'atom-text-editor'

        if atom.packages.loadedPackages['atom-html-preview']
            @toolBar.addButton
                icon: 'globe'
                callback: 'atom-html-preview:toggle'
                tooltip: 'html-preview(Ctrl+Shift+H)'
                iconset: ''

        if atom.packages.loadedPackages['markdown-preview-plus']
            @toolBar.addButton
                icon: 'markdown'
                callback: 'markdown-preview-plus:toggle'
                tooltip: 'markdown-preview(Ctrl+Shift+M)'
                iconset: ''
                disable: '!markdown'
        else if atom.packages.loadedPackages['markdown-preview']
            @toolBar.addButton
                icon: 'markdown'
                callback: 'markdown-preview:toggle'
                tooltip: 'markdown-preview(Ctrl+Shift+M)'
                iconset: ''
                disable: '!markdown'

        @toolBar.addSpacer()

        @toolBar.addButton
            icon: 'sitemap'
            callback: 'tree-view:toggle'
            tooltip: 'サイドバー(Ctrl+\)'
            iconset: 'fa'

        @toolBar.addButton
            icon: 'format-horizontal-align-center'
            callback: ['pane:split-right']
            tooltip: 'split-right'
            iconset: 'mdi'

        @toolBar.addButton
            icon: 'format-vertical-align-center'
            callback: ['pane:split-down']
            tooltip: 'split-down'
            iconset: 'mdi'

        @toolBar.addButton
            tooltip: '全画面表示'
            callback: 'window:toggle-full-screen'
            icon: 'arrows-alt'
            iconset: 'fa'

        @toolBar.addSpacer()

        @toolBar.addButton
            icon: 'angle-left'
            callback: 'pane:show-previous-item'
            tooltip: '前のタブ(Ctrl+Shift+Tab)'
            iconset: 'fa'

        @toolBar.addButton
            icon: 'angle-right'
            callback: 'pane:show-next-item'
            tooltip: '次のタブ(Ctrl+Tab)'
            iconset: 'fa'

        @toolBar.addSpacer()

        if atom.packages.loadedPackages['browser-plus']
            @toolBar.addButton
                icon: 'chrome'
                callback: 'browser-plus:open'
                tooltip: 'Browser(Ctrl+Alt+O)'
                iconset: 'fa'

        if atom.packages.loadedPackages['ask-stack']
            @toolBar.addButton
                icon: 'stack-overflow'
                callback: 'ask-stack:ask-question'
                tooltip: 'Ask Stack(Ctrl+Alt+A)'
                iconset: 'fa'

        @toolBar.addButton
            icon: 'refresh'
            callback: 'window:reload'
            tooltip: 'Reload Window'
            iconset: 'ion'

        if atom.inDevMode()
            @toolBar.addSpacer()
            @toolBar.addButton
                icon: 'keyboard-o'
                callback: 'key-binding-resolver:toggle'
                tooltip: 'KeyBinding Resolver'
                iconset: 'fa'
            @toolBar.addButton
                icon: 'bug'
                callback: ->
                    require('remote').getCurrentWindow().toggleDevTools()
                tooltip: 'Toggle Developer Tools'
                iconset: 'ion'
