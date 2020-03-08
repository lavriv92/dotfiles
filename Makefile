install: install-vim install-fish install-git \
	install-tmux

install-vim:
	@echo "Installing vim"
	rm -rf ~/.config/nvim/init.vim
	ln -s `pwd`/vim/vimrc ~/config/nvim/init.vim
	@echo "Finish installing vim"

install-tmux:
	@echo "Installing tmux"
	rm -rf ~/.tmux.conf
	ln -s `pwd`/tmux/tmux.conf ~/.tmux.conf
	@echo "Finish installing tmux"

install-fish:
	@echo "Install fish"

install-git:
	@echo "Install git"

setup-iterm:
	@echo "Clone jellybeans theme"
	rm -rf iterm-themes
	git clone git@github.com:qtpi/Jellybeans.itermcolors.git iterm-themes
	@echo "Finish clonning theme"
