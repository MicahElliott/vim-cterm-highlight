"syntax reset

if &background == 'dark'
  let bg = 'black'
  hi Normal ctermfg=white ctermbg=black
else
  let bg = 'white'
  hi Normal ctermfg=black ctermbg=white
end

let i = 1
"let i = 30
while i < 256
  exec 'hi cf'.i.' ctermfg='.i.'  ctermbg='.bg
  "exec 'hi cb'.i.' ctermbg='.i.'  ctermfg=white'
  exec 'hi cb'.i.' ctermbg='.i
  exec 'hi cfb'.i.' ctermfg='.i.' ctermbg='.bg.' cterm=bold'
  exec 'hi cfi'.i.' ctermfg='.i.' ctermbg='.bg.' cterm=italic'
  exec 'hi cfn'.i.' ctermfg='.i.' ctermbg='.bg.' cterm=none'
  let i += 1
endwhile

let toodarks = [17,18,232,233]

hi cbold   cterm=bold
hi citalic cterm=italic
hi cbi     cterm=bold,italic
hi cbn     cterm=none

"hi cb255 ctermfg=black
