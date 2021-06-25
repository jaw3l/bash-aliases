# Bash Aliases and Functions

## Setting up aliases

We want to put all our additions into a separate file like \~/.bash_aliases, instead of adding them to "\~/.bashrc" directly.

Create a file called ".bash_aliases" using command below.

```bash
echo >> ~/.bash_aliases
```

This command creates the file in your home directory if not exists. "~" means $HOME. And if the file exits in your home directory then ">>" will append an empty line to the file. You could also use ">" but the file is truncated if it already existed.

With the command below we will append a if statement to "~/.bashrc" file. Which will check if ".bash_aliases" file is exist. If exists it will source the file. The "source" command reads and executes commands from the file specified as its argument in the current shell environment. "." and "source are the same command.

```bash
echo "
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
" >> ~/.bashrc
```

## Setting up functions

We will follow same steps as aliases.

Creating the file

```bash
echo >> ~/.bash_functions
```

Adding the file to .bashrc

```bash
echo "
if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi
" >> ~/.bashrc
```

And you are ready to go!
