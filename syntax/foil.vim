" Vim Syntax File
" Language: foil
" Maintainer: Stani Pintjuk 
" Latest Revision: 2018-02-12

if exists("b:current_syntax")
  finish
endif

syn match tagName '[a-zA-Z0-9]\+' nextgroup=attribute skipwhite
syn region tagBody start='{' end='}' fold transparent 
syn region string start='"' end='"' contains=escapedQoute
syn match escapedQoute '\\"' contained
syn region path start='<' end='>' contains=escapedGt
syn match escapedGt '\\>' contained

syn match attribute '[a-zA-Z0-9]\+' nextgroup=equals contained
syn keyword equals = nextgroup=string,path contained

let b:current_syntax = "foil"

hi def link tagName Statement
hi def link string String
hi def link escapedQoute Special
hi def link path Constant
hi def link escapedGt Special
hi def link attribute Type
