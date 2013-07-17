" Vim syntax file
" Language:     BullScript
" Maintainer:   Toby Padilla <tobypadilla@gmail.com>
" URL:          https://github.com/toby/vim-bullscript
" Last Version: 17 July 2013

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Javascript
runtime! syntax/javascript.vim syntax/javascript/*.vim
syn cluster htmlPreproc add=bsHTML,bs
syn cluster javaScriptAll add=bsHTML

" BullScript
syn region bs matchgroup=Special start="\v#[nNxX]?\{" end="}" contains=bsExp
syn match bsExp "\v[^{}]*" contained containedin=bs
syn region bsHTML start="\v\<[^/]" end="\v(/\>|\</[^>]*\>)" contains=bsHTML,bs
syn region bsStringD start='"' end='"' contains=bs
syn region bsStringS start="'" end="'" contains=bs

" Highlighting
hi def link bsExp Statement
hi def link bsStringD String
hi def link bsStringS String
hi def link bsHTML String

let b:current_syntax = "bullscript"
