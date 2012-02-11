let s:save_cpo = &cpo
set cpo&vim


if !exists('g:grep_launcher_words')
    let g:grep_launcher_words = {}
endif

let s:unite_source = {
      \ 'name' : 'grep_launcher',
      \ 'hooks' : {},
      \ }

let s:grep_words_list = []
function! s:unite_source.hooks.on_init(args, context)
    let s:grep_words_list = []    
    for key in keys(g:grep_launcher_words)
        call add(s:grep_words_list, {
              \ 'word' : key,
              \ 'kind' : 'command',
              \ 'action__command' : 'vimgrep /' . g:grep_launcher_words[key] . '/ %',
              \ })
    endfor
endfunc

function! s:unite_source.gather_candidates(args, context)
    return s:grep_words_list
endfunction

function! unite#sources#grep_launcher#define()
  return s:unite_source
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
