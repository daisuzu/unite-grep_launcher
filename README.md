unite-grep_launcher
===================
unite-grep_launcher is a unite source plugin to launch ":vimgrep" to
current buffer from user defined grep words.

Example Settings
----------------
Add keyword to the dictionary type g:grep_launcher_words in vimrc as
following.

    if !exists('g:grep_launcher_words')
        let g:grep_launcher_words = {}
    endif

    let g:grep_launcher_words['keyword1'] = 'single grep word'
    let g:grep_launcher_words['keyword2'] = 'grep word #1\|grep word #2'

Usage
-----

    :Unite grep_launcher
