"syn match c100 'ctermfg=232'

let i = 1
while i < 256
  "exec 'syn match cf'.i.' "ctermfg='.i.'"'
  "exec 'syn match cb'.i.' "ctermbg='.i.'"'
  exec 'syn match cb'.i.'  "^\s*hi .*ctermbg='.i.'"'
  exec 'syn match cf'.i.'  "^\s*hi .*ctermfg='.i.'"'
  exec 'syn match cfb'.i.' "^\s*hi .*ctermfg='.i.' .*bold"'
  exec 'syn match cfi'.i.' "^\s*hi .*ctermfg='.i.' .*italic"'
  exec 'syn match cfn'.i.' "^\s*hi .*ctermfg='.i.' .*=none"'

  "exec 'syn match cb'.i.'  "^\s*hi .*ctermbg='.i.'"'
  let i += 1
endwhile

syn match cbold   'cterm=bold'
syn match citalic 'cterm=italic'
syn match cbi     'cterm=bold,italic'
syn match cbi     'cterm=italic,bold'
syn match cbn     'cterm=none'
