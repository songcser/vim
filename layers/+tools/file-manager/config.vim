scriptencoding utf-8

" nerdtree {
  let g:NERDTreeShowHidden=1
  let g:NERDTreeAutoDeleteBuffer=1
  if !g:spacevim_gui
    let g:NERDTreeDirArrowExpandable = '▸'
  endif
  let g:NERDTreeDirArrowCollapsible = '▾'
  let g:NERDTreeIgnore=[
              \ '\.py[cd]$', '\~$', '\.swo$', '\.swp$', '\.DS_Store$',
              \ '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$', '\.egg-info$',
              \ '__pycache__']
  " autocmd vimenter * NERDTree
  
  " close vim if the only window left open is a NERDTree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

  nnoremap <F4> :NERDTreeToggle<CR>
  inoremap <F4> <ESC>:NERDTreeToggle<CR>
  nnoremap <Leader>ft :NERDTreeToggle<CR>
  nnoremap <Leader>fd :NERDTreeFind<CR>
" }

" nerdtree-git-plugin {
  let g:NERDTreeIndicatorMapCustom = {
              \ 'Modified'  : '✹',
              \ 'Staged'    : '✚',
              \ 'Untracked' : '✭',
              \ 'Renamed'   : '➜',
              \ 'Unmerged'  : '═',
              \ 'Deleted'   : '✖',
              \ 'Dirty'     : '✗',
              \ 'Clean'     : '✓',
              \ 'Unknown'   : '?'
              \ }
" }

" vim-devicons {
  let g:webdevicons_enable = 1
  let g:webdevicons_enable_nerdtree = 1
  let g:webdevicons_enable_unite = 1
" }

" vim-nerdtree-syntax-highlight {
  let g:NERDTreeFileExtensionHighlightFullName = 1
  let g:NERDTreeExactMatchHighlightFullName = 1
  let g:NERDTreePatternMatchHighlightFullName = 1
  "let g:NERDTreeLimitedSyntax = 1

  autocmd FileType nerdtree setlocal nolist
  let g:WebDevIconsUnicodeDecorateFolderNodes = 1
  let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
  let g:NERDTreeDirArrows=0

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
  let g:NERDTreeExtensionHighlightColor['python'] = s:green " sets the color of css files to blue
  let g:NERDTreeExtensionHighlightColor['org'] = s:pink " sets the color of css files to blue
  let g:NERDTreeExtensionHighlightColor['xml'] = s:aqua " sets the color of css files to blue
  let g:NERDTreeExtensionHighlightColor['conf'] = s:lightGreen " sets the color of css files to blue
  let g:NERDTreeExtensionHighlightColor['yml'] = s:salmon " sets the color of css files to blue
  let g:NERDTreeExtensionHighlightColor['txt'] = s:green " sets the color of css files to blue
  let g:NERDTreeExtensionHighlightColor['Dockerfile'] = s:darkBlue " sets the color of css files to blue

  let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
  let g:NERDTreeExactMatchHighlightColor['tex'] = s:rspec_red " sets the color of css files to blue
  let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files
  let g:NERDTreeExactMatchHighlightColor['.ipynb'] = s:lightPurple " sets the color for .ipynb files
  let g:NERDTreeExactMatchHighlightColor['.py'] = s:green " sets the color for .ipynb files
  let g:NERDTreeExactMatchHighlightColor['.xml'] = s:aqua " sets the color for .ipynb files
  let g:NERDTreeExactMatchHighlightColor['.conf'] = s:lightGreen " sets the color for .ipynb files
  let g:NERDTreeExactMatchHighlightColor['Dockerfile'] = s:darkBlue " sets the color for .ipynb files
  let g:NERDTreeExactMatchHighlightColor['.yml'] = s:salmon " sets the color for .ipynb files
  let g:NERDTreeExactMatchHighlightColor['.txt'] = s:green " sets the color for .ipynb files

  let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
  let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb
  let g:NERDTreePatternMatchHighlightColor['*.py$'] = s:green " sets the color for files ending with _spec.rb
  let g:NERDTreePatternMatchHighlightColor['*.xml$'] = s:aqua " sets the color for files ending with _spec.rb
  let g:NERDTreePatternMatchHighlightColor['*.conf$'] = s:lightGreen " sets the color for files ending with _spec.rb
  let g:NERDTreePatternMatchHighlightColor['*.yml$'] = s:salmon " sets the color for files ending with _spec.rb
  let g:NERDTreePatternMatchHighlightColor['*.txt$'] = s:green " sets the color for files ending with _spec.rb
" }
