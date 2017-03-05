execute 'colorized string' do
	command 'echo "PS1='\[\e[1;33m\][\u@\h \W]\$\[\e[0m\] '" >> /home/faktor/.bashrc '
	only_if ''
end
