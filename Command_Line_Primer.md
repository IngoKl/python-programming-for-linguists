# (Linux) Command Line Primer

The command line is a text-based interface to your computer (or a computer in the cloud). It allows you to perform actions on the computer by running commands.

In (*Google Colab* / *Jupyter*) notebooks, you can execute these commands by prefixing them with the `!` character. 
Therefore, you could, for example, run `!ls` in a notebook cell to list all files in the current folder.

**Please note:** The command line is a *very* powerful and useful tool worth exploring. However, this very short primer is only going to introduce you to some very basic commands that will help you during this workshop.

## Navigating the File System

When you are using the command line, you are always 'within' a folder on your file system. The folder you are in can be identified by a path, for example `/home/linguistics/exercises`. In this example, there is a folder called `exercises` which is in a folder called `linguistics` which is in a folder called `home` which is in the so-called root directory `/` of the file system.

Similarly, if you `git clone` this repository, you will have, for example, this folder: `python-programming-for-linguists/2020/data/wikipedia`.

If you want to know your current folder, you can run the `pwd` command on the command line.

If you want to move to a different folder, you can run `cd path` (e.g., `cd python-programming-for-linguists/2020/data/`) to *change* the *directory*. You can also use `cd ..` to go up one folder. Therefore, if you are in `python-programming-for-linguists/2020/data/` and rund `cd ..`, you will end up in `python-programming-for-linguists/2020/`.

If you want to know which files are in the current folder, you can run `ls`.

## Working with Files

You can create an empty file in the current folder using `touch filename` (e.g., `touch exercise.txt`).

If you want to have a brief look at the contents of a file, run `cat filename` (e.g., `cat exercise.txt`).

In order to copy a file, you will need to run `cp filename copy_of_filename`. For example, you could run `cp exercise.txt exercises/exercise.txt` to copy the file `exercise.txt` into a folder called `exercises`. In case you want to move the file, you can use `mv` instead of `cp`.

If you need to delete a file, you can run `rm filename` (e.g., `cat exercise.txt`).

## Useful Commands

Find a specific string in a file

`cat file.txt | grep 'search term'`

Replace every instance of *word_a* with *word_b* in file `file.txt`

`sed 's/word_a/word_b/g' file.txt`

Display the differences between `file_a.txt` and `file_b.txt`

`diff file_a.txt file_b.txt`

Count the lines, words, and characters in `file.txt`

`wc file.txt` or `wc -w file.txt` to just get the word count.
