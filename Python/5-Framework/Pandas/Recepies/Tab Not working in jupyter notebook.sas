%config Completer.use_jedi = False

This worked for me.
-----------------------

This issue seems to be related to the version of jedi being incompatible with ipython
https://github.com/ipython/ipython/issues/12740

Similar to the suggestion on the link, in my case it was fixed by removing jedi and installing a previous version that supports it.

conda install jedi=0.17.2