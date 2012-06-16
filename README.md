Joshua Gross's VIM profile
==========================

My vimrc and a collection of plugins.

It is cool stuff.

Installation
------------

Copy .vimrc and .vim/ to your home directory. Bam.

It is possible that vim may look at something besides .vimrc and vim/ for settings and plugins. If you restart vim
and it isn't super-awesome, it's looking somewhere else. A few Google searches should tell you how to fix this.

Usage
-----
0. Engage - try things out - fork this project on Github and commit your changes!
1. Look through the vimrc - most features are documented (if they aren't, play around, add comments and do a pull request to share your awesomeness with the world).
2. Understand window management in vim: http://vimdoc.sourceforge.net/htmldoc/windows.html
3. Buffer Explorer: open multiple files.
    This maps TAB to shift one buffer left; SEMICOLON to shift right.
	  Try opening 5 or 6 files and then use tab/semicolon to navigate.
4. Taglist and easytags:
    1. Make sure to install exuberant ctags on your system: http://vim-taglist.sourceforge.net/faq.html
	  2. Read about how vim handles tags: http://vimdoc.sourceforge.net/htmldoc/tagsrch.html#tag-commands
	  3. Read about how easytags makes tags awesome-er: https://github.com/xolox/vim-easytags
5. Tags: 
      1. Make sure to install exuberant ctags on your system: http://vim-taglist.sourceforge.net/faq.html
	  2. :TlistToggle

Special Environments
--------------------
* LaTeX: turns on word wrap and maps j and k to gj and gk (navigates visual lines instead of hard breaks)
* Assembly: highlights (in red) everything after the 80th character on a line
