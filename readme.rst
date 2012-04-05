********************************************************************************
QGIS Documentation
********************************************************************************

Introduction
================================================================================

`View Online (html) <http://readthedocs.org/docs/qgis-governance/en/latest/>`_ 
(only in English, ReadTheDocs does not support Internationalization at this
time)

This repository stores official QGIS documentation.

http://qgis.org

To build::

    ./build.sh

Paolo Corti
April, 2012

Some quick note on internationalization
================================================================================

Project administrators must have generated .pot files::

    $ sphinx-build -b gettext source/ source/translated/pot/

To add a new language
--------------------------------------------------------------------------------

#. copy the source/translated/pot directory to 
   source/transated/your-language-code directory, where your-language-code is
   the `ISO language code with 2 digits 
   <http://en.wikipedia.org/wiki/List_of_ISO_639-1_codes>`_
#. rename the files .pot to .po and edit them
#. compile the .po files you have edited::

    $ msgfmt introduction.po -o translated/it/LC_MESSAGES/introduction.mo

#. to build/rebuild (updating them) all the template files (for Italian)::

    $ sphinx-build -b gettext source/ source/translated/it/

#. This will check if a .po file needs to be updated::

    $ msgmerge source/translated/it/getting_started.po 
    source/translated/pot/getting_started.pot -U

Editors
--------------------------------------------------------------------------------

#. Check out Gtranslator
#. ...

TODO

