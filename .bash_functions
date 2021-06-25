## Functions ##

# Cheat sheet for commands
# Syntax: cheat <command>
function cheat(){ curl cheat.sh/"$@"; }

# Shows number of files in that directory
# Syntax: numfiles [directory]
function numfiles() { N="$(ls $1 | wc -l)"; if [ -z "$1" ]; then echo "$N file in this directory."; else echo "$N files in $1"; fi }

# Create a compressed gzip archive
# Syntax: targz <file>
function targz() { tar -zcvf $1.tar.gz $1} # Alternatively you can remove the file afterwards"; rm -r $1;"

# Untar single file from tar.gz archive
# Syntax: untargz <file>
function untargz() { tar -zxvf $1} # Alternatively you can remove the file afterwards"; rm -r $1;"