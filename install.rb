#!/usr/bin/env ruby

# Install Homebrew
`curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install`

# Install Homebrew packages
brew_packages = ['vim', 'zsh', 'wget', 'brew-cask']
brew_packages.each do |package|
	`brew install #{package}`
end

# Install Homebrew casks
cask_packages = ['iterm2', 'firefox', 'dropbox', 'spectacle', 'virtualbox']
cask_packages do |package|
	`brew cask install #{package}`
end

# Install Vundle
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

# Install oh-my-zsh
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

# Copy dotfiles
dotfiles = ['.tmux.conf', '.vimrc', '.zshrc']
dotfiles.each do |file|
	`cp configurations/${file} ~`
end

