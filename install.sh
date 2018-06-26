cd ~/.vim_runtime3

echo '
source ~/.vim_runtime3/plugins-list.vim

source ~/.vim_runtime3/vimrcs/basic/basic.vim
source ~/.vim_runtime3/vimrcs/basic/buffers.vim
source ~/.vim_runtime3/vimrcs/basic/folds.vim
source ~/.vim_runtime3/vimrcs/basic/windows.vim

source ~/.vim_runtime3/vimrcs/extended/gui.vim
source ~/.vim_runtime3/vimrcs/extended/abbreviations.vim
source ~/.vim_runtime3/vimrcs/extended/undo.vim
source ~/.vim_runtime3/vimrcs/extended/move-line.vim

source ~/.vim_runtime3/vimrcs/filetypes/javascript.vim
source ~/.vim_runtime3/vimrcs/filetypes/json.vim
source ~/.vim_runtime3/vimrcs/filetypes/python.vim
source ~/.vim_runtime3/vimrcs/filetypes/go.vim
source ~/.vim_runtime3/vimrcs/filetypes/clojure.vim

source ~/.vim_runtime3/vimrcs/plugins-config/plugins-config.vim
source ~/.vim_runtime3/vimrcs/plugins-config/nerdtree.vim

if has('"'"'nvim'"'"')
  source ~/.vim_runtime3/vimrcs/neovim/neovim.vim
endif

source ~/.vim_runtime3/vimrcs/opinionated/colorscheme.vim
source ~/.vim_runtime3/vimrcs/opinionated/d-is-for-delete.vim
source ~/.vim_runtime3/vimrcs/opinionated/escape-key.vim
source ~/.vim_runtime3/vimrcs/opinionated/yank.vim
source ~/.vim_runtime3/vimrcs/opinionated/experiment.vim
try
  source ~/.vim_runtime3/vimrcs/my-configs.vim
catch
endtry
' > ~/.vimrc

echo "Installed vimrc 3.0 successfully!"
