install: install-vim install-fish install-git\
	install-tmux setup-iterm

install-vim:
	@echo "Installing vim"
	rm -rf ~/.config/nvim
	mkdir -p ~/.config/nvim
	ln -s `pwd`/vim/vimrc ~/.config/nvim/init.vim
	@echo "Finish installing vim"

install-tmux:
	@echo "Installing tmux"
	rm -rf ~/.tmux.conf
	ln -s `pwd`/tmux/tmux.conf ~/.tmux.conf
	@echo "Finish installing tmux"

install-fish:
	@echo "Install fish"
	rm -rf ~/.config/fish
	ln -s `pwd`/fish ~/.config/fish
	@echo "Finish install fish"

install-git:
	@echo "Installing git"
	rm -rf ~/.config/git
	rm -rf ~/.gitconfig
	mkdir -p ~/.config/git
	ln -s `pwd`/git/gitconfig ~/.config/git/config
	ln -s `pwd`/git/gitconfig ~/.gitconfig
	@echo "Finish installing git"

setup-iterm:
	@echo "Clone ayu theme"
	rm -rf iterm-themes
	git clone git@github.com:hwyncho/ayu-iTerm.git iterm-themes
	@echo "Finish clonning theme"

install-vscode:
	@echo "Install VSCode"
	rm -rf ~/Library/ApplicationSupport/Code/User/settings.json
	ln -s `pwd`/vscode/settings.json ~/Library/ApplicationSupport/Code/User/settings.json
	@echo "End installing VSCode"

backup-config:
	@echo "Start backup"
	git add . 
	git commit -m"Backup from $(shell date)"
	git push origin master
	@echo "Backup finish"
