"syntax reset

if &background == 'dark'
  let bg = 'black'
  hi Normal ctermfg=white ctermbg=black
else
  let bg = 'white'
  hi Normal ctermfg=black ctermbg=white
end

let i = 1
while i < 256
  exec 'hi cf'.i.' ctermfg='.i.'  ctermbg='.bg
  "exec 'hi cb'.i.' ctermbg='.i.'  ctermfg=white'
  exec 'hi cb'.i.' ctermbg='.i
  exec 'hi cfb'.i.' ctermfg='.i.' ctermbg='.bg.' cterm=bold'
  exec 'hi cfi'.i.' ctermfg='.i.' ctermbg='.bg.' cterm=italic'
  if !exists('g:ctermhi_discard_rare')
    exec 'hi cfu'.i.' ctermfg='.i.' ctermbg='.bg.' cterm=underline'
    exec 'hi cfbi'.i.' ctermfg='.i.' ctermbg='.bg.' cterm=bold,italic'
    exec 'hi cfbu'.i.' ctermfg='.i.' ctermbg='.bg.' cterm=bold,underline'
    exec 'hi cfiu'.i.' ctermfg='.i.' ctermbg='.bg.' cterm=italic,underline'
  endif
  exec 'hi cfn'.i.' ctermfg='.i.' ctermbg='.bg.' cterm=none'
  exec 'hi cbonly'.i.' ctermbg='.i
  let i += 1
endwhile

let i = 246  " getting too white
while i < 256
  let i += 1
  exec 'hi cbonly'.i.' ctermbg='.i.' ctermfg=black'
endwhile

let toodarks = [17,18,232,233]

hi cbold   cterm=bold
hi citalic cterm=italic
hi cbi     cterm=bold,italic
hi cbn     cterm=none ctermfg=none
hi stupid     cterm=none ctermfg=none

"hi cb255 ctermfg=black
