scriptencoding utf-8

" vim-better-whitespace {
    highlight ExtraWhitespace ctermbg=197
" }

" incsearch.vim {
    if !g:spacevim_nvim
        " incsearch.vim has bug with GUI vim
        if !g:spacevim_gui_running
            map /  <Plug>(incsearch-forward)
            map ?  <Plug>(incsearch-backward)
            map g/ <Plug>(incsearch-stay)

            map z/ <Plug>(incsearch-fuzzyspell-/)
            map z? <Plug>(incsearch-fuzzyspell-?)
            map zg/ <Plug>(incsearch-fuzzyspell-stay)
        endif
    endif
" }

" vim-multiple-cursors {
    let g:multi_cursor_next_key='<C-j>'
    let g:multi_cursor_prev_key='<C-k>'
    let g:multi_cursor_skip_key='<C-x>'
    let g:multi_cursor_quit_key='<Esc>'
" }

" vim-startify {
    let g:startify_custom_header = [
                \'                                             _',
                \'         ___ _ __   __ _  ___ ___     __   _(_)_ __ ___',
                \'        / __| -_ \ / _- |/ __/ _ \____\ \ / / | -_ - _ \',
                \'        \__ \ |_) | (_| | (_|  __/_____\ V /| | | | | | |',
                \'        |___/ .__/ \__._|\___\___|      \_/ |_|_| |_| |_|',
                \'            |_|',
                \'                  [ space-vim ' . g:spacevim_version . ' ＠' . v:version . ' ]',
                \]

    augroup SPACEVIM_START
        autocmd!
        autocmd VimEnter *
                    \   if !argc() && exists(':Startify')
                    \|      Startify
                    \|  endif
    augroup END
    let g:startify_list_order = [
                \ ['   Recent Files:'],
                \ 'files',
                \ ['   Project:'],
                \ 'dir',
                \ ['   Sessions:'],
                \ 'sessions',
                \ ['   Bookmarks:'],
                \ 'bookmarks',
                \ ['   Commands:'],
                \ 'commands',
                \ ]

    let g:startify_change_to_vcs_root = 1

" }

" nerdtree {
    let g:NERDTreeShowHidden=1
    let g:NERDTreeAutoDeleteBuffer=1
    let g:NERDTreeDirArrowExpandable = '▸'
    let g:NERDTreeDirArrowCollapsible = '▾'
    let g:NERDTreeIgnore=[
                \ '\.py[cd]$', '\~$', '\.swo$', '\.swp$',
                \ '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$',
                \ ]
    " close vim if the only window left open is a NERDTree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }

"nerdtree-git-plugin {
    let g:NERDTreeIndicatorMapCustom = {
                \ 'Modified'  : '✹',
                \ 'Staged'    : '✚',
                \ 'Untracked' : '✭',
                \ 'Renamed'   : '➜',
                \ 'Unmerged'  : '═',
                \ 'Deleted'   : '✖',
                \ 'Dirty'     : '✗',
                \ 'Clean'     : '✔︎',
                \ 'Unknown'   : '?'
                \ }
" }

" vim-nerdtree-syntax-highlight {
    " let g:NERDTreeFileExtensionHighlightFullName = 1
    " let g:NERDTreeExactMatchHighlightFullName = 1
    " let g:NERDTreePatternMatchHighlightFullName = 1
    " let g:NERDTreeLimitedSyntax = 1

    " you can add these colors to your .vimrc to help customizing
    let s:brown = '905532'
    let s:aqua =  '3AFFDB'
    let s:blue = '689FB6'
    let s:darkBlue = '44788E'
    let s:purple = '834F79'
    let s:lightPurple = '834F79'
    let s:red = 'AE403F'
    let s:beige = 'F5C06F'
    let s:yellow = 'F09F17'
    let s:orange = 'D4843E'
    let s:darkOrange = 'F16529'
    let s:pink = 'CB6F6F'
    let s:salmon = 'EE6E73'
    let s:green = '8FAA54'
    let s:lightGreen = '31B53E'
    let s:white = 'FFFFFF'
    let s:rspec_red = 'FE405F'
    let s:git_orange = 'F54D27'

    let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
    let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue
    let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
    let g:NERDTreeExtensionHighlightColor['python'] = s:green " sets the color of css files to blue
    let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
    let g:NERDTreeExtensionHighlightColor['org'] = s:pink " sets the color of css files to blue

    let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
    let g:NERDTreeExactMatchHighlightColor['tex'] = s:rspec_red " sets the color of css files to blue
    let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
    let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files
    let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
    let g:NERDTreeExactMatchHighlightColor['.ipynb'] = s:lightPurple " sets the color for .ipynb files
    let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
    let g:NERDTreeExactMatchHighlightColor['.py'] = s:red " sets the color for .ipynb files

    let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
    let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb
    let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
    let g:NERDTreePatternMatchHighlightColor['*.py$'] = s:red " sets the color for files ending with _spec.rb
" }

" vim-nerdtree-highlight-file {
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
augroup nerdtree_autocmds
    autocmd!

    au VimEnter * call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
    au VimEnter * call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
    au VimEnter * call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
    au VimEnter * call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
    au VimEnter * call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
    au VimEnter * call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
    au VimEnter * call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
    au VimEnter * call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
    au VimEnter * call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
    au VimEnter * call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
    au VimEnter * call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
    au VimEnter * call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
    au VimEnter * call NERDTreeHighlightFile('rb', 'Red', 'none', '#ffa500', '#151515')
    au VimEnter * call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff0000', '#151515')
    au VimEnter * call NERDTreeHighlightFile('py', 'Magenta', 'none', '#ff00ff', '#151515')
    au VimEnter * call NERDTreeHighlightFile('ts', 'Red', 'none', '#ffa5ff', '#151515')
    au VimEnter * call NERDTreeHighlightFile('xml', 'green', 'none', '#ffaa00', '#151515')
augroup END

    " function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    "  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    "  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
    " endfunction
    "
    " call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
    " call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
    " call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
    " call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
    " call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
    " call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
    " call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
    " call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
    " call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
    " call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
    " call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
    " call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
    " call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
    " call NERDTreeHighlightFile('py', 'Magenta', 'none', 'blue', '#151515')
" }

autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let NERDTreeIgnore = ['\.pyc$', '__pycache__', '*\~', '\.un\~$', '\.DS_Store', '\.git']

execute 'source' fnamemodify(expand('<sfile>'), ':h') . '/keybindings.vim'
