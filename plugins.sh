plugins () {
	printf "In order to start the configuration the plugins, \n"
}

while true
do
	printf "---- .vimrc generator! ----\n\n"
	printf "¡¡¡IMPORTANT!!!\n"
	printf "If exists, this script will override your current vimrc file\n"
	printf "In order to keep safe your previous configuration, use the option to make a copy\n"
	printf "Type q to exit, or c to continue\n> "
	read bool
	case $bool in
		c)
			plugins
			;;
		1)
			printf "Type q to exit, or c to continue\n> "
			;;
		q)
		quit)
			break
			;;
		*)
			printf "Please choose a valid option, press 1 to see the options\n"
	esac

done