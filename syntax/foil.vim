" Vim Syntax File
" Language: foil
" Maintainer: Stani Pintjuk 
" Latest Revision: 2018-02-12

if exists("b:current_syntax")
  finish
endif

syn match foilTagName '[a-zA-Z0-9]\+' nextgroup=foilAttribute skipwhite skipnl
syn region foilTagBody start='{' end='}' fold transparent 
syn region foilString start='"' end='"' contains=foilEscapedQoute
syn match foilEscapedQoute '\\"\|\\\\' contained
syn region foilPath matchgroup=foilPathDelims start='<' end='>' contains=foilEscapedGt oneline
syn match foilEscapedGt '\\>' contained

syn match foilAttribute '[a-zA-Z0-9]\+='me=e-1 nextgroup=foilString,foilPath,foilAttribute skipwhite skipnl

syn match foilSmallSelfClosedTag '[a-zA-Z0-9]\+;'

let b:current_syntax = "foil"

hi def link foilTagName Statement
hi def link foilString String
hi def link foilEscapedQoute Special
hi def link foilPath Underlined
hi def link foilEscapedGt Special
hi def link foilAttribute Type
hi def link foilPathDelims Normal
hi def link foilSmallSelfClosedTag Special
