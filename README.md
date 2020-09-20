# [Dot Files](https://github.com/jasongreenbit/dot-files)

Custom configuration files for UNIX-like environments

## Installation

Clone the repository locally into the **~/src/dot-files** directory:

```bash
mkdir ~/src && cd ~/src
git clone git@github.com:jasongreenbit/dot-files.git
```

### Bash Shell Customisations

Back up your existing **.bashrc** file:

```bash
mv ~/.bashrc ~/.bashrc.old
```

Replace your old **.bashrc** file with a sym link to the **.bashrc** file for your operating environment in the repository:

```bash
ln -s ~/src/dot-files/linuxmint/20/.bashrc ~/.bashrc
```

Activate the customisations in the current shell:

```bash
source ~/.bashrc
```

## Acknowledgements

The **git/prompt.sh** file is taken from [https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh](https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh)
