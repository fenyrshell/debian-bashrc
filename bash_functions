# Git branch info
function git-branch() {
    git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/(\1)/" 
}

# Random string
function str-random() {
    < /dev/urandom tr -dc 'a-zA-Z0-9_-' | head -c${1:-16}; echo;
}
