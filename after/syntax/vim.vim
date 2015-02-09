"syn match c100 'ctermfg=232'

" Need two separate loops to avoid predence of higher numbers
let i = 1
while i < 256
  " Something really screwy between 59 and 60
  exec 'syn match cb'.i.'  "^\s*hi .*ctermbg='.i.'"'
  let i += 1
endwhile

let i = 1
while i < 256
  exec 'syn match cf'.i.'  "^\s*hi .*ctermfg='.i.'"'
  exec 'syn match cfb'.i.' "^\s*hi .*ctermfg='.i.' .*bold"'
  exec 'syn match cfi'.i.' "^\s*hi .*ctermfg='.i.' .*italic"'
  if !exists('g:ctermhi_discard_rare')
    exec 'syn match cfu'.i.' "^\s*hi .*ctermfg='.i.' .*underline"'
    exec 'syn match cfbi'.i.' "^\s*hi .*ctermfg='.i.' .*bold,italic"'
    exec 'syn match cfbu'.i.' "^\s*hi .*ctermfg='.i.' .*bold,underline"'
    exec 'syn match cfiu'.i.' "^\s*hi .*ctermfg='.i.' .*italic,underline"'
  endif
  exec 'syn match cfn'.i.' "^\s*hi .*ctermfg='.i.' .*=none"'
  " Standalone bg
  exec 'syn match cbonly'.i.' "ctermbg='.i.'$"'
  let i += 1
endwhile

syn match cbold   'cterm=bold'
syn match citalic 'cterm=italic'
syn match cbi     'cterm=bold,italic'
syn match cbi     'cterm=italic,bold'
" Doesn't work since not specific as above, I guess
syn match cbn     'ctermbg=none'
