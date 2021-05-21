# Git branch info
function git-branch() {
    git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/(\1)/" 
}

# Random string
function str-random() {
    < /dev/urandom tr -dc 'a-zA-Z0-9_-' | head -c${1:-16}; echo;
}

# Check if packages is installed
function pkg-installed() {
	if [ "$1" != "" ]; then
		PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $1 2> /dev/null)

		case $PKG_OK in
			'install ok installed')
				return 0
			;;
			*)
				return 1
			;;
		esac
	fi

	return 1
}
