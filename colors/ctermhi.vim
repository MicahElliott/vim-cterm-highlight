echomsg 'in ctermhi'
sleep 1

let i = 1
while i < 256
  exec 'hi c'.i.' ctermfg='.i.' ctermbg=black'
  let i += 1
end
hi c100 ctermfg=100 ctermfg=black
