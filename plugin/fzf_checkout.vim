" Global settings
let g:fzf_checkout_git_bin = get(g:, 'fzf_checkout_git_bin', 'git')
let g:fzf_checkout_git_options = get(g:, 'fzf_checkout_git_options', '')
let g:fzf_checkout_execute = get(g:, 'fzf_checkout_execute', 'system')


let s:prefix = get(g:, 'fzf_command_prefix', '')
let s:branch_command = s:prefix . 'GCheckout'
let s:tag_command = s:prefix . 'GCheckoutTag'

execute 'command! -bang -nargs=0 ' . s:branch_command . ' call fzf_checkout#list(<bang>0, "branch")'
execute 'command! -bang -nargs=0 ' . s:tag_command . ' call fzf_checkout#list(<bang>0, "tag")'
