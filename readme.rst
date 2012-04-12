********************************************************************************
QGIS Documentation
********************************************************************************

Introduction
================================================================================

`View Online (html) <http://readthedocs.org/docs/qgis-sphinx-doc>`_ 
(only in English, ReadTheDocs does not support Internationalization at this
time)

This repository stores official QGIS documentation.

http://qgis.org

Paolo Corti
April, 2012

Setup
================================================================================

#. create a virtualenv and activate it (I generally mantain all the virtualenvs 
   in a ~/virtualenv but you may create it in your preferred location)::

    $ virtualenv --no-site-packages sphinx-env
    $ source sphinx-env/bin/activate

#. install sphinx in the virtualenv::
    
    (sphinx-env)$ pip install sphinx

#. clone the github project::

    (sphinx-env)$ git clone https://capooti@github.com/capooti/qgis-sphinx-doc.git

#. build the sphinx project with the build.sh script::

    (sphinx-env)./build.sh


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

#. to build/rebuild all the template files::

    $ sphinx-build -b gettext source/ source/translated/pot/

#. This will check if a .po file needs to be updated::

    $ msgmerge source/translated/it/introduction.po 
    source/translated/pot/introduction.pot -U
    
#. At this point the translator can check the introduction.po file and check the
   paragraphs that need to be updated, marked with a #fuzzy tag
    
Editors
--------------------------------------------------------------------------------

#. Check out Gtranslator
#. ...

TODO

