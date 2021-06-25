## Aliases ##

# Some manners
# Syntax: pls
alias pls="sudo"

# Sort files by file size
# Syntax: lt
alias lt="ls --human-readable --size -1 -S --classify"

# View only mounted drives
# Syntax: mnt
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"

# Find a command in grep history
# Syntax: gh <search_term>
alias gh="history|grep"

# Count files
# Syntax: count
alias count="echo -n 'There are $(find . -type f | wc -l) files.'"

# Create a Python virtual environment
# Syntax: cve
alias cve="echo -e 'Creating virtual environment';python3 -m venv ./venv"

# Activate the Python virtual environment
# Syntax: ave
alias ave="source ./venv/bin/activate"

# Deactivate the Python virtual environment
# Syntax: deac
alias deac="deactivate"

# Delete the Python virtual environment
# Syntax: dve
alias dve="ave;pip freeze > requirements.txt;deac;sudo rm -rf venv/"